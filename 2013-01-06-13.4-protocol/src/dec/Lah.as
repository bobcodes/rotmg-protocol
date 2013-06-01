package dec
{
[CLASS1632]   import tubovetyc.Command;


   public class Lah extends Command
   {
      public function Lah(param1:Qibynud, param2:int, param3:int, param4:Luvotat) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.map_=param1;
         this.x_=param2;
         this.y_=param3;
         this.tyvocivo=param4.clone();
         return;
      }

      private var map_:Qibynud;

      private var x_:int;

      private var y_:int;

      private var tyvocivo:Luvotat;

      override public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.map_.monugepum(this.x_,this.y_);
         return;
      }

      override public function unexecute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.map_.motoguho(this.x_,this.y_,this.tyvocivo);
         return;
      }
   }
[/CLASS]
}