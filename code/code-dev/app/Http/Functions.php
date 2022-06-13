<?php
    function getUnitsArray(){
        $a = [
            '0' => 'Unidad Hospitalaria',
            '1' => 'Unidad Departamental'
        ];

        return $a;
    }

    function getRoleUserArray($mode, $id){
        $roles = [
            '0' => 'Administrador del Sistema',
            '1' => 'Administrador de Unidad',
            '2' => 'Jefe de Alimentacion',
            '3' => 'Dietista',
            '4' => 'Jefe de Servicio'
        ];

        if(!is_null($mode)):
            return $roles;
        else:
            return $roles[$id];
        endif;
    }

    function getDietStatusArray($mode, $id){
        $roles = [
            '0' => 'Activa',
            '1' => 'Servida',
            '2' => 'Eliminada'
        ];

        if(!is_null($mode)):
            return $roles;
        else:
            return $roles[$id];
        endif;
    }

    function getUserStatusArray($mode, $id){
        $status = [
            '0' => 'Suspendido',
            '1' => 'Activo'
        ];

        if(!is_null($mode)):
            return $status;
        else:
            return $status[$id];
        endif;
    }

    //Key Value From JSON
    function kvfj($json, $key){
        if($json == null):
            return null;
        else:
            $json = $json;
            $json = json_decode($json, true);

            if(array_key_exists($key, $json)):
                return $json[$key];
            else:
                return null;
            endif;
        endif;
    }

    function user_permissions(){
        $p = [
            'dashboard' => [
                'icon' => '<i class="fas fa-tachometer-alt"></i>',
                'title' => 'Módulo de Dashboard',
                'keys' => [
                    'dashboard' => 'Puede ver el dashboard.',
                    'dashboard_small_stats' => 'Puede ver las estadísticas rápidas.'
                ]
            ],
            'municipalities' => [
                'icon' => '<i class="fas fa-globe-americas"></i>',
                'title' => 'Módulo de Municipios',
                'keys' => [
                    'municipalities' => 'Puede ver el listado de municipios del Pais.'
                ]
            ],
            'units' => [
                'icon' => '<i class="fas fa-hospital-alt"></i>',
                'title' => 'Módulo de Unidades Medicas o Departamentales',
                'keys' => [
                    'units' => 'Puede ver el listado de unidades.',
                    'unit_add' => 'Puede agregar nuevas unidades.',
                    'unit_edit' => 'Puede editar unidades.',
                    'unit_delete' => 'Puede eliminar unidades.',
                    'unit_search' => 'Puede buscar unidades.'
                ]
            ],
            'diets' => [
                'icon' => '<i class="fas fa-utensils"></i>',
                'title' => 'Módulo de Dietas',
                'keys' => [
                    'diets' => 'Puede ver el listado de dietas.',
                    'diet_add' => 'Puede agregar nuevas dietas.',
                    'diet_edit' => 'Puede editar dietas.',
                    'diet_delete' => 'Puede eliminar dietas.'
                ]
            ],
            'services' => [
                'icon' => '<i class="fas fa-laptop-medical"></i>',
                'title' => 'Módulo de Servicios',
                'keys' => [
                    'serviceg_list' => 'Puede ver el listado de servicios general.',
                    'serviceg_add' => 'Puede agregar servicios genereales.',
                    'serviceg_edit' => 'Puede editar servicios generales.',
                    'service_list' => 'Puede ver el listado de servicios .',
                    'service_add' => 'Puede agregar servicios.',
                    'service_edit' => 'Puede editar servicios.'
                ]
            ],
            'journeys' => [
                'icon' => '<i class="fas fa-clock"></i>',
                'title' => 'Módulo de Jornadas',
                'keys' => [
                    'journeys' => 'Puede ver el listado de jornadas.',
                    'journey_add' => 'Puede agregar nuevos jornadas.',
                    'journey_edit' => 'Puede editar jornadas.',
                    'journey_delete' => 'Puede eliminar jornadas.'
                ]
            ], 
            'diet_request' => [
                'icon' => '<i class="fas fa-file-alt"></i>',
                'title' => 'Módulo de Solicitudes de Dietas',
                'keys' => [
                    'diet_requests' => 'Puede ver el listado de solicitudes de dietas.',
                    'diet_request_add' => 'Puede agregar nuevas solicitudes de dietas.',
                    'diet_request_view' => 'Puede ver el detalle de solicitudes de dietas.',
                    'diet_request_delete' => 'Puede eliminar solicitudes de dietas.'
                ]
            ],                       
            'reports' => [
                'icon' => '<i class="fas fa-cubes"></i>',
                'title' => 'Módulo de Reportes',
                'keys' => [
                    'reports' => 'Puede ver el listado de reportes.',
                    'report_informatica' => 'Puede generar un reporte de informatica.',
                    'report_user' => 'Puede generar un reporte de extensiones.',
                    'report_bitacora' => 'Puede generar un reporte de bitacora del sistema.'
                ]
            ],
            'bitacoras' => [
                'icon' => '<i class="fas fa-clipboard-list"></i> ',
                'title' => 'Módulo de Bitacoras',
                'keys' => [
                    'bitacoras' => 'Puede ver el listado de bitacoras.'
                ]
            ],
            'users' => [
                'icon' => '<i class="fas fa-user-lock"></i> ',
                'title' => 'Módulo de Usuarios',
                'keys' => [
                    'user_list' => 'Puede ver el listado de usuarios.',
                    'user_add' => 'Puede agregar nuevos usuarios.',
                    'user_edit' => 'Puede editar usuarios.',
                    'user_search' => 'Puede buscar usuarios.',
                    'user_banned' => 'Puede suspender usuarios.',
                    'user_delete' => 'Puede eliminar usuarios.',
                    'user_reset_password' => 'Puede restablecer contraseña de usuarios.',
                    'user_permissions' => 'Puede administrar los permisos de los usuarios.',
                    'user_info' => 'Puede ver información de su cuenta',
                    'user_change_password' => 'Puede cambiar su contraseña de inicio de sesión'

                ]
            ]

        ];

        return $p;
    }

    function getUserYears(){
        $ya = date('Y');
        $ym = $ya - 18;
        $yo = $ym - 62;

        return [$ym, $yo];
    }

    function getMonths($mode, $key){
        $m = [
            '01' => 'Enero',
            '02' => 'Febrero',
            '03' => 'Marzo',
            '04' => 'Abril',
            '05' => 'Mayo',
            '06' => 'Junio',
            '07' => 'Julio',
            '08' => 'Agosto',
            '09' => 'Septiembre',
            '10' => 'Octubre',
            '11' => 'Noviembre',
            '12' => 'Diciembre'
        ];

        if($mode == "list"){
            return $m;
        }else{
            return $m[$key];
        }
    }

?>