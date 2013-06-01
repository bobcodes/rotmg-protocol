package nafa
{
   import dulywywo.Command;


   public class Qiq extends Command
   {
      public function Qiq(param1:Simezute, param2:int, param3:int, param4:String, param5:String) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         super();
         this.map_=param1;
         this.x_=param2;
         this.y_=param3;
         this.pemybewo=param4;
         this.feloqirej=param5;
         return;
      }

      private var map_:Simezute;

      private var x_:int;

      private var y_:int;

      private var pemybewo:String;

      private var feloqirej:String;

      override public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.map_.ken(this.x_,this.y_,this.feloqirej);
         return;
      }

      override public function unexecute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.map_.ken(this.x_,this.y_,this.pemybewo);
         return;
      }
   }

}