var base = location.protocol+'//'+location.host;
var route = document.getElementsByName('routeName')[0].getAttribute('content');

document.addEventListener('DOMContentLoaded', function(){
    var btn_search = document.getElementById('btn_search');
    var form_search = document.getElementById('form_search');
    
    if(btn_search){
        btn_search.addEventListener('click', function(e){
            e.preventDefault();
            if(form_search.style.display === 'block'){
                form_search.style.display = 'none';
            }else{
                form_search.style.display = 'block';
            }
        });
    }

    if(route == "product_edit"){
        var btn_product_file_image = document.getElementById('btn_product_file_image');
        var product_file_image = document.getElementById('product_file_image');

        btn_product_file_image.addEventListener('click', function(){
            product_file_image.click();
        }, false);

        product_file_image.addEventListener('change', function(){
            document.getElementById('form_product_gallery').submit();
        });
    }

    document.getElementsByClassName('lk-'+route)[0].classList.add('active');

    btn_deleted = document.getElementsByClassName('btn-deleted');
    for(i=0; i < btn_deleted.length; i++){
        btn_deleted[i].addEventListener('click', delete_object);
    }

    $('#table-modules').DataTable({
        "paging": true,
        "lengthChange": true,
        "searching": true,
        "ordering": true,
        "info": true,
        "autoWidth": false,
        "responsive": true,
        language: {
            "decimal": "",
            "emptyTable": "No hay registros",
            "info": "Mostrando _START_ a _END_ de _TOTAL_ Registros",
            "infoEmpty": "Mostrando 0 to 0 of 0 Registros",
            "infoFiltered": "(Filtrado de _MAX_ total registros)",
            "infoPostFix": "",
            "thousands": ",",
            "lengthMenu": "Mostrar _MENU_ Registros",
            "loadingRecords": "Cargando...",
            "processing": "Procesando...",
            "search": "Buscar:",
            "zeroRecords": "Sin resultados encontrados",
            "paginate": {
                "first": "Primero",
                "last": "Ultimo",
                "next": "Siguiente",
                "previous": "Anterior"
            }
        }
    });

    $("#idsupplier").select2({
        placeholder: "Seleccione una Opción",
        allowClear: true
    });

    $("#idproduct").select2({
        placeholder: "Seleccione una Opción",
        allowClear: true
    });

    $("#idservice").select2({
        placeholder: "Seleccione una Opción",
        allowClear: true
    });



    
});

function delete_object(e){
    e.preventDefault();
    var object = this.getAttribute('data-object');
    var action = this.getAttribute('data-action');
    var path = this.getAttribute('data-path');
    var url = base + '/' + path + '/' + object + '/' + action;
    var title, text, icon;

    if(action == "delete"){
        title = "¿Esta seguro de eliminar este elemento?";
        text = "Recuerde que esta acción enviara este elemento a la papelera o lo eliminara de forma definitiva.";
        icon = "warning";
    }

    if(action == "restore"){ 
        title = "¿Quiere restaurar este elemento?";
        text = "Esta acción restaurará este elemento y estará activo en la base de datos.";
        icon = "info";
    }

    Swal.fire({
        title: title,
        text: text,
        icon: icon,
        showCancelButton: true,
    }).then((result) =>{
        if (result.isConfirmed) {
            window.location.href = url;
        }
    });

}