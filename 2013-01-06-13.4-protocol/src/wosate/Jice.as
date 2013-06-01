package wosate
{
[CLASS214]   import wufyba.Rifu;
   import vinirudel.Wukyva;
   import tiqydad.Fevirofow;
   import pymyb.Juwyqupe;
   import pymyb.Mydyho;
   import pymyb.Kynopyq;
   import nylos.Kyk;
   import tusidywuq.Wutyli;
   import wyzoz.Fasud;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.utils.Dictionary;
   import fylenyjuty.Wyviru;
   import vinirudel.Pygifasym;
   import com.company.assembleegameclient.objects.Player;


   public class Jice extends Object implements Rifu
   {
      public function Jice() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Walalu;

      public var model:Wukyva;

      public var setFocus:Fevirofow;

      public var kezav:Juwyqupe;

      public var nerij:Mydyho;

      public var cysa:Kynopyq;

      public var fyz:Kyk;

      public var ciqys:Wutyli;

      public var myticuleg:Fasud;

      public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.setMap(this.model.palaliz.map);
         this.setFocus.add(this.ricym);
         this.fyz.add(this.cad);
         this.nerij.add(this.leketu);
         this.kezav.add(this.pimac);
         this.cysa.add(this.javigoh);
         this.ciqys.add(this.dolup);
         this.view.wijope=this.myticuleg.top;
         return;
      }

      private function dolup() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.deactivate();
         return;
      }

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.setFocus.remove(this.ricym);
         this.fyz.remove(this.cad);
         this.nerij.remove(this.leketu);
         this.kezav.remove(this.pimac);
         this.cysa.remove(this.javigoh);
         this.ciqys.remove(this.dolup);
         return;
      }

      private function ricym(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:GameObject = this.zumy(param1);
         this.view.setFocus(_loc2_);
         return;
      }

      private function zumy(param1:String) : GameObject {
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

      private function pimac(param1:Wyviru) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.setGroundTile(param1.cubaq,param1.poge,param1.tybu);
         return;
      }

      private function leketu(param1:Pygifasym) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.setGameObjectTile(param1.cubaq,param1.poge,param1.kazi);
         return;
      }

      private function javigoh(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1==Kynopyq.IN)
         {
            this.view.zoomIn();
         }
         else
         {
            if(param1==Kynopyq.OUT)
            {
               this.view.zoomOut();
            }
         }
         return;
      }

      private function cad(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.draw();
         return;
      }
   }
[/CLASS]
}