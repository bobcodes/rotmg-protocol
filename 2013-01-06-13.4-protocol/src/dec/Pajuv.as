package dec
{
[CLASS1635]   import tubovetyc.Command;


   public class Pajuv extends Command
   {
      public function Pajuv(param1:Qibynud, param2:int, param3:int, param4:String, param5:String) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         super();
         this.map_=param1;
         this.x_=param2;
         this.y_=param3;
         this.ziwyjydu=param4;
         this.mulanyrej=param5;
         return;
      }

      private var map_:Qibynud;

      private var x_:int;

      private var y_:int;

      private var ziwyjydu:String;

      private var mulanyrej:String;

      override public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.map_.cyhynoty(this.x_,this.y_,this.mulanyrej);
         return;
      }

      override public function unexecute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.map_.cyhynoty(this.x_,this.y_,this.ziwyjydu);
         return;
      }
   }
[/CLASS]
}