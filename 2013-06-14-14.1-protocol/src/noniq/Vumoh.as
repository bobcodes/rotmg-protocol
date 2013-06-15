package noniq
{
   import taz.Command;


   public class Vumoh extends Command
   {
      public function Vumoh(param1:Vibefij, param2:int, param3:int, param4:Gyd) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.map_=param1;
         this.x_=param2;
         this.y_=param3;
         this.boroly=param4.clone();
         return;
      }

      private var map_:Vibefij;

      private var x_:int;

      private var y_:int;

      private var boroly:Gyd;

      override public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.map_.cugekud(this.x_,this.y_);
         return;
      }

      override public function unexecute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.map_.nyfumec(this.x_,this.y_,this.boroly);
         return;
      }
   }

}