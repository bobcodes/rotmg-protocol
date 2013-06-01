package vahejo
{
   import qov.Kalefu;
   import fom.Hepeg;
   import sasacen.Baquja;
   import cuwyg.Dewydo;
   import zubamyki.Canypa;
   import zoroc.Taqosohuf;
   import com.company.assembleegameclient.objects.Player;
   import fom.Cosen;
   import flash.display.DisplayObject;
   import hedewi.Moho;
   import com.company.assembleegameclient.util.Kibaviv;
   import com.company.assembleegameclient.map.Map;
   import hif.Rorody;
   import aaa.rotmg.action.mapping.RotMGActionMapperAbstract;
   import pirus.Vimaz;
   import cuwyg.Giri;


   public class Vyheqanik extends Kalefu
   {
      public function Vyheqanik() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Kigokoci;

      public var ruhakony:Hepeg;

      public var zihy:Baquja;

      public var gihopuheg:Dewydo;

      public var fulerus:Canypa;

      public var paqocahu:Taqosohuf;

      private var weke:Boolean = false;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zihy.addOnce(this.holi);
         this.view.fugelow.add(this.tywotafoq);
         this.view.makyd.add(this.qely);
         this.zihy.add(this.update);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.fugelow.remove(this.tywotafoq);
         this.view.makyd.remove(this.qely);
         this.zihy.remove(this.update);
         return;
      }

      private function holi(param1:Player) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Cosen = this.gihopuheg.kyfylyzug[this.view.position];
         var _loc3_:int = param1.getPotionCount(_loc2_.objectId);
         this.view.jaribosod(_loc3_,_loc2_.viv(_loc3_),_loc2_.available,_loc2_.objectId);
         return;
      }

      private function update(param1:Player) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Cosen = null;
         var _loc3_:* = 0;
         if((this.view.objectType==Dewydo.mokikeqa||this.view.objectType==Dewydo.rywihuh)&&!this.weke)
         {
            _loc2_=this.gihopuheg.bomokic(this.view.objectType);
            _loc3_=param1.getPotionCount(_loc2_.objectId);
            this.view.jaribosod(_loc3_,_loc2_.viv(_loc3_),_loc2_.available);
         }
         return;
      }

      private function tywotafoq(param1:DisplayObject) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Moho = null;
         var _loc2_:Player = this.ruhakony.qizys.map.player_;
         var _loc3_:* = Kibaviv.bikymecup(param1,Moho,Map,Rorody);
         if(_loc3_ is Map)
         {
            RotMGActionMapperAbstract.worunyjub.invDrop(_loc2_,Dewydo.fil(this.view.objectType),this.view.objectType);
         }
         else
         {
            if(_loc3_ is Moho)
            {
               _loc4_=_loc3_ as Moho;
               if(_loc4_.vycuc()==Vimaz.sufybefyr&&!(_loc4_.hywot.owner==_loc2_))
               {
                  RotMGActionMapperAbstract.worunyjub.invSwapPotion(_loc2_,_loc2_,Dewydo.fil(this.view.objectType),this.view.objectType,_loc4_.hywot.owner,_loc4_.nejidebup,Vimaz.sufybefyr);
               }
            }
         }
         return;
      }

      private function qely() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Giri = null;
         var _loc1_:Cosen = this.gihopuheg.kyfylyzug[this.view.position];
         if(_loc1_.available)
         {
            _loc2_=new Giri(_loc1_.objectId,Giri.gosy);
            this.fulerus.dispatch(_loc2_);
         }
         return;
      }
   }

}