
global.grid = mp_grid_create(0, 0, room_width div 32, room_height div 32, 32, 32);
mp_grid_add_instances(global.grid, objWall, false);
with (objEnemy)
   {
   path = path_add();
   if mp_grid_path(global.grid, path, x, y, objPlayer.x, objPlayer.y, 1)
      {
      path_start(path, 0.5, 3, 0);
      }
   }
   
