package hepiwus
{
   import vyso.Milapep;
   import micac.Ciqyl;
   import pak.Jote;
   import ziru.Req;
   import ziru.Zyr;
   import ziru.Boluzod;
   import pusy.Mun;
   import dicyl.Degonazev;
   import tefabezo.Fipuji;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.utils.Dictionary;
   import bicidikev.Fywudog;
   import micac.Leguwa;
   import com.company.assembleegameclient.objects.Player;


   public class Forugid extends Object implements Milapep
   {
      public function Forugid() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Sejano;

      public var model:Ciqyl;

      public var setFocus:Jote;

      public var caqedof:Req;

      public var gykequton:Zyr;

      public var pivucu:Boluzod;

      public var hibufuryn:Mun;

      public var nitug:Degonazev;

      public var qukacefi:Fipuji;

      public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.setMap(this.model.qyhowo.map);
         this.setFocus.add(this.myrob);
         this.hibufuryn.add(this.wyseg);
         this.gykequton.add(this.cequju);
         this.caqedof.add(this.leqaneb);
         this.pivucu.add(this.wamasije);
         this.nitug.add(this.rykon);
         this.view.rokawekos=this.qukacefi.top;
         return;
      }

      private function rykon() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.deactivate();
         return;
      }

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.setFocus.remove(this.myrob);
         this.hibufuryn.remove(this.wyseg);
         this.gykequton.remove(this.cequju);
         this.caqedof.remove(this.leqaneb);
         this.pivucu.remove(this.wamasije);
         this.nitug.remove(this.rykon);
         return;
      }

      private function myrob(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:GameObject = this.fiqih(param1);
         this.view.setFocus(_loc2_);
         return;
      }

      private function fiqih(param1:String) : GameObject {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:GameObject = null;
         if(param1=="")
         {
            return this.view.map.player_;
         }
         var _loc2_:Dictionary = this.view.map.goDict_;
         for each (_loc3_ in _loc2_)
         {
            if(_loc3_.name_==param1)
            {
               return _loc3_;
            }
         }
         return this.view.map.player_;
      }

      private function leqaneb(param1:Fywudog) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.setGroundTile(param1.nokapi,param1.bytula,param1.damor);
         return;
      }

      private function cequju(param1:Leguwa) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.setGameObjectTile(param1.nokapi,param1.bytula,param1.hoby);
         return;
      }

      private function wamasije(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==Boluzod.IN)
         {
            this.view.zoomIn();
         }
         else
         {
            if(param1==Boluzod.OUT)
            {
               this.view.zoomOut();
            }
         }
         return;
      }

      private function wyseg(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.draw();
         return;
      }
   }

}