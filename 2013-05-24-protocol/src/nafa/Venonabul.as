package nafa
{
   import dulywywo.Command;


   public class Venonabul extends Command
   {
      public function Venonabul(param1:Simezute, param2:int, param3:int, param4:int, param5:int, param6:int) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         super();
         this.map_=param1;
         this.x_=param2;
         this.y_=param3;
         this.gakej=param4;
         this.cikamuq=param5;
         this.tub=param6;
         return;
      }

      private var map_:Simezute;

      private var x_:int;

      private var y_:int;

      private var gakej:int;

      private var cikamuq:int;

      private var tub:int;

      override public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.map_.bivacem(this.x_,this.y_,this.gakej,this.tub);
         return;
      }

      override public function unexecute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.map_.bivacem(this.x_,this.y_,this.gakej,this.cikamuq);
         return;
      }
   }

}