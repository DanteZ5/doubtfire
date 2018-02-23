import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  const sweetAlertButton = document.getElementById('sweet-alert');
  if (sweetAlertButton) {
    sweetAlertButton.addEventListener('click', () => {
      swal({
        title: "Done!",
        text: "Booked successfully, awaiting reply",
        icon: "success"
      })
    });
  }
}

export { bindSweetAlertButtonDemo };

