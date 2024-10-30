const abrirModalBtn = document.getElementById('abrirModalBtn');
const cerrarModal = document.getElementById('cerrarModal');
const miModal = document.getElementById('miModal');

abrirModalBtn.addEventListener('click', () => {
    miModal.style.display = 'block';
});

cerrarModal.addEventListener('click', () => {
    miModal.style.display = 'none';
});

window.addEventListener('click', (e) => {
    if (e.target === miModal) {
        miModal.style.display = 'none';
    }
});
