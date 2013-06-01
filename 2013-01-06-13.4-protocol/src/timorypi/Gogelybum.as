package timorypi
{
[CLASS144]   import tysenyzy.Zovisis;
   import com.company.assembleegameclient.game.GameSprite;
   import jehivytu.Vuvuv;
   import tusidywuq.Regyd;
   import mywyvuryw.Kejubuveh;
   import com.company.assembleegameclient.objects.Player;
   import flash.utils.Dictionary;


   public class Gogelybum extends Zovisis
   {
      public function Gogelybum() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:GameSprite;

      public var labej:Vuvuv;

      public var picywu:Regyd;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.labej.add(this.nocam);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.labej.remove(this.nocam);
         return;
      }

      private function nocam(param1:Kejubuveh) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mytaqome();
         this.syp(param1);
         this.picywu.dispatch(false);
         return;
      }

      private function mytaqome() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Player = this.view.map.player_;
         this.view.map.player_=null;
         return;
      }

      private function syp(param1:Kejubuveh) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Dictionary = this.view.map.goDict_;
         return;
      }
   }
[/CLASS]
}