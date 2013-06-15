package mybujib
{
   import flash.events.MouseEvent;
   import mavew.Bydyqej;
   import hilonec.Menu;
   import com.company.assembleegameclient.objects.Player;
   import hilonec.Tuwo;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.GameObject;


   public class Wymekuli extends Kuvybuqec
   {
      public function Wymekuli() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(16777215,4179794,false);
         return;
      }

      override protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.onMouseOver(param1);
         cagemec(new Bydyqej(this.fuceqyja(),false));
         return;
      }

      override protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.onMouseOut(param1);
         cagemec(null);
         return;
      }

      override protected function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.onMouseDown(param1);
         videhel();
         bibu(this.vuquka());
         return;
      }

      protected function vuquka() : Menu {
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
         return new Tuwo(_loc1_.map_,this.fuceqyja());
      }

      private function fuceqyja() : Vector.<Player> {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:GameObject = null;
         new Vector.<Player>(1)[0]=go_ as Player;
         var _loc1_:Vector.<Player> = new Vector.<Player>(1);
         for each (_loc2_ in kimiq)
         {
            _loc1_.push(_loc2_ as Player);
         }
         return _loc1_;
      }
   }

}