package noniq
{
   import taz.Command;


   public class Haviru extends Command
   {
      public function Haviru(param1:Vibefij, param2:int, param3:int, param4:int, param5:int, param6:int) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         super();
         this.map_=param1;
         this.x_=param2;
         this.y_=param3;
         this.zyfukaz=param4;
         this.wehuvy=param5;
         this.gafy=param6;
         return;
      }

      private var map_:Vibefij;

      private var x_:int;

      private var y_:int;

      private var zyfukaz:int;

      private var wehuvy:int;

      private var gafy:int;

      override public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.map_.sara(this.x_,this.y_,this.zyfukaz,this.gafy);
         return;
      }

      override public function unexecute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.map_.sara(this.x_,this.y_,this.zyfukaz,this.wehuvy);
         return;
      }
   }

}