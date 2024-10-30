    var modal = document.getElementById('resgistrate');
    var openModalLink = document.querySelector('.btn[href="#resgistrate"]');
    var closeModalLink = document.querySelector('.modalDialog .close');
    function openModal() {
        modal.style.display = 'block';
    }
    function closeModal() {
        modal.style.display = 'none';
    }
    openModalLink.addEventListener('click', openModal);
    closeModalLink.addEventListener('click', closeModal);