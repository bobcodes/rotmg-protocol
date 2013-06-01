package dec
{
[CLASS1639]   import tubovetyc.Command;


   public class Pevo extends Command
   {
      public function Pevo(param1:Qibynud, param2:int, param3:int, param4:int, param5:int, param6:int) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         super();
         this.map_=param1;
         this.x_=param2;
         this.y_=param3;
         this.zejujod=param4;
         this.tetebel=param5;
         this.zununyr=param6;
         return;
      }

      private var map_:Qibynud;

      private var x_:int;

      private var y_:int;

      private var zejujod:int;

      private var tetebel:int;

      private var zununyr:int;

      override public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.map_.wegowe(this.x_,this.y_,this.zejujod,this.zununyr);
         return;
      }

      override public function unexecute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.map_.wegowe(this.x_,this.y_,this.zejujod,this.tetebel);
         return;
      }
   }
[/CLASS]
}