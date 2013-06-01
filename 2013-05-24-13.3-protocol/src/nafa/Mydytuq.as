package nafa
{
   import dulywywo.Command;


   public class Mydytuq extends Command
   {
      public function Mydytuq(param1:Simezute, param2:int, param3:int, param4:Gutunul) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.map_=param1;
         this.x_=param2;
         this.y_=param3;
         this.mahisi=param4.clone();
         return;
      }

      private var map_:Simezute;

      private var x_:int;

      private var y_:int;

      private var mahisi:Gutunul;

      override public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.map_.riqo(this.x_,this.y_);
         return;
      }

      override public function unexecute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.map_.byka(this.x_,this.y_,this.mahisi);
         return;
      }
   }

}