//ez az edzésekről kiugró szöveg megjelenítésére van
const description = document.querySelectorAll('.description_button');
const textContainer = document.getElementById('text-container');

description.forEach(item => {
    item.addEventListener('click', () => {
        const itemId = item.getAttribute('id');

        // lekérdezés a PHP fájlhoz
        fetch(`edzes_reszletek.php?id=${itemId}`)
            .then(response => response.text())
            .then(data => {
                textContainer.innerHTML = data;  // A válasz szöveget beillesztjük a konténerbe
            })
            .catch(error => console.error('Hiba:', error));
    });
});