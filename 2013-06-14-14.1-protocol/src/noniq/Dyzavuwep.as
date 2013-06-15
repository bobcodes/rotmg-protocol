package noniq
{
   import taz.Command;


   public class Dyzavuwep extends Command
   {
      public function Dyzavuwep(param1:Vibefij, param2:int, param3:int, param4:String, param5:String) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         super();
         this.map_=param1;
         this.x_=param2;
         this.y_=param3;
         this.mufud=param4;
         this.pudynyni=param5;
         return;
      }

      private var map_:Vibefij;

      private var x_:int;

      private var y_:int;

      private var mufud:String;

      private var pudynyni:String;

      override public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.map_.nepi(this.x_,this.y_,this.pudynyni);
         return;
      }

      override public function unexecute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.map_.nepi(this.x_,this.y_,this.mufud);
         return;
      }
   }

}