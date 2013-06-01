package copeno
{
[CLASS1663]   import flash.events.MouseEvent;
   import pigeguwo.Natoq;
   import sybyzowo.Menu;
   import com.company.assembleegameclient.objects.Player;
   import sybyzowo.Budogy;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.GameObject;


   public class Nabag extends Wyj
   {
      public function Nabag() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super(16777215,4179794,false);
         return;
      }

      override protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super.onMouseOver(param1);
         volokyd(new Natoq(this.sen(),false));
         return;
      }

      override protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.onMouseOut(param1);
         volokyd(null);
         return;
      }

      override protected function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.onMouseDown(param1);
         kerepu();
         fyby(this.babe());
         return;
      }

      protected function babe() : Menu {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Player = go_ as Player;
         if(_loc1_==null||_loc1_.map_==null)
         {
            return null;
         }
         var _loc2_:Player = _loc1_.map_.player_;
         if(_loc2_==null)
         {
            return null;
         }
         return new Budogy(_loc1_.map_,this.sen());
      }

      private function sen() : Vector.<Player> {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:GameObject = null;
         new Vector.<Player>(1)[0]=go_ as Player;
         var _loc1_:Vector.<Player> = new Vector.<Player>(1);
         for each (_loc2_ in jygezuq)
         {
            _loc1_.push(_loc2_ as Player);
         }
         return _loc1_;
      }
   }
[/CLASS]
}