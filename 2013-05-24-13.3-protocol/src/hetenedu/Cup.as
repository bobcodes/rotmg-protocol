package hetenedu
{
   import bidav.Vodyqupyg;
   import fom.Hepeg;
   import hycaka.Ruh;
   import diweli.Sicyqaky;
   import diweli.Pepokymu;
   import diweli.Mopotyru;
   import sasacen.Baquja;
   import zubamyki.Zafy;
   import nitotohyk.Zyqyt;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.utils.Dictionary;
   import vajide.Gynibeboz;
   import fom.Kerov;
   import com.company.assembleegameclient.objects.Player;


   public class Cup extends Object implements Vodyqupyg
   {
      public function Cup() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Noriqidir;

      public var model:Hepeg;

      public var setFocus:Ruh;

      public var hiwucuhug:Sicyqaky;

      public var cywajuce:Pepokymu;

      public var decejiqym:Mopotyru;

      public var zihy:Baquja;

      public var meb:Zafy;

      public var dom:Zyqyt;

      public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.setMap(this.model.qizys.map);
         this.setFocus.add(this.mihyn);
         this.zihy.add(this.gageg);
         this.cywajuce.add(this.rym);
         this.hiwucuhug.add(this.sakaqe);
         this.decejiqym.add(this.cofir);
         this.meb.add(this.fahope);
         this.view.gale=this.dom.top;
         return;
      }

      private function fahope() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.deactivate();
         return;
      }

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.setFocus.remove(this.mihyn);
         this.zihy.remove(this.gageg);
         this.cywajuce.remove(this.rym);
         this.hiwucuhug.remove(this.sakaqe);
         this.decejiqym.remove(this.cofir);
         this.meb.remove(this.fahope);
         return;
      }

      private function mihyn(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:GameObject = this.vebudosy(param1);
         this.view.setFocus(_loc2_);
         return;
      }

      private function vebudosy(param1:String) : GameObject {
         var _loc6_:* = true;
         var _loc7_:* = false;
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

      private function sakaqe(param1:Gynibeboz) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.setGroundTile(param1.hup,param1.qen,param1.mof);
         return;
      }

      private function rym(param1:Kerov) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.setGameObjectTile(param1.hup,param1.qen,param1.casijor);
         return;
      }

      private function cofir(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==Mopotyru.IN)
         {
            this.view.zoomIn();
         }
         else
         {
            if(param1==Mopotyru.OUT)
            {
               this.view.zoomOut();
            }
         }
         return;
      }

      private function gageg(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.draw();
         return;
      }
   }

}