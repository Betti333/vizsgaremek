function edzesek_adatai() {
    fetch('edzes.php')
        .then(adat => adat.json()) //az adat változót végigviszi az edzes.php által visszaadott tömbön, így abba mindíg egy edzes adata kerül
        .then(adatok => { 
            //ide szeretném az adatokat elhelyezni?
            const hely = document.getElementById("edzesek");
            hely.innerHTML = ""; //Kitörli a tbody tartalmát
            adatok.forEach(edzesek => {
                let row = document.createElement('tr')
                row.innerHTML= `
                    <td>${edzesek.id}</td>
                    <td>${edzesek.tipus}</td>
                    <td>${edzesek.nap}</td>
                    <td>${edzesek.idő}</td>
                    <td>${edzesek.ar}</td>
                    <td>${edzesek.szabad_hely}</td>
                    <td><button class="register" onclick="register(${edzesek.id})">Jelentkezés</button></td>
                `
                hely.appendChild(row)
            });
        })
}
edzesek_adatai();