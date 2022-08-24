function dark() {

    var link = document.getElementById("theme");

    link.href = "Styles/Fasthosts.css";
    document.cookie = "theme=0";
}
function light() {

    var link = document.getElementById("theme");

    link.href = "Styles/Fasthosts%20-%20light.css";
    document.cookie = "theme=1";
}
function getCookieOnLoad() {
    if (document.cookie === "" || document.cookie === "theme=0") {
        document.getElementById("theme").href = "Styles/Fasthosts.css";
    }
    else {
        document.getElementById("theme").href = "Styles/Fasthosts%20-%20light.css";
    }
}