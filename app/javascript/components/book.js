import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  document.getElementById('sweet-alert').addEventListener('click', () => {
    swal({
      title: "Done!",
      text: "Booked successfully, awaiting reply",
      icon: "success"
    })
  });
}

export { bindSweetAlertButtonDemo };

