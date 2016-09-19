enm = argument0;

if( ds_list_find_index(enemiesStopping,enm) != -1 )
{
    ds_list_delete(enemiesStopping,ds_list_find_index(enemiesStopping,enm));
    stopsEnemies = true;
}
