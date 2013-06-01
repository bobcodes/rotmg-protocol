package ruwysepyd
{
   import qov.Kalefu;
   import fom.Hepeg;
   import sasacen.Zycol;
   import sasacen.Baquja;
   import sasacen.Mygotuwo;
   import meke.Dave;
   import com.company.assembleegameclient.objects.Kejomaz;
   import com.company.googleanalytics.GA;
   import aaa.rotmg.config.UserConfig;
   import gyrake.Options;
   import com.company.assembleegameclient.objects.Player;


   public class Menumu extends Kalefu
   {
      public function Menumu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:CharacterDetailsView;

      public var ruhakony:Hepeg;

      public var jumuvaj:Zycol;

      public var zihy:Baquja;

      public var ryqo:Mygotuwo;

      public var hoze:Dave;

      public var howu:Kejomaz;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fynycu();
         this.view.init(this.ruhakony.vofe(),this.ruhakony.haw());
         this.zihy.addOnce(this.gageg);
         this.zihy.add(this.higeragil);
         this.ryqo.add(this.batanenim);
         this.view.gizysoz.add(this.roqah);
         this.view.pahecog.add(this.qygis);
         return;
      }

      private function fynycu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.hoze=this.hoze;
         this.view.howu=this.howu;
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zihy.remove(this.higeragil);
         this.ryqo.remove(this.batanenim);
         this.view.gizysoz.remove(this.roqah);
         this.view.pahecog.remove(this.qygis);
         return;
      }

      private function roqah() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ruhakony.qizys.gsc_.escape();
         GA.global().trackEvent("enterPortal","Nexus Button");
         UserConfig.data_.needsRandomRealm=false;
         UserConfig.save();
         return;
      }

      private function qygis() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ruhakony.qizys.mui_.clearInput();
         GA.global().trackEvent("options","Options Button");
         this.ruhakony.qizys.addChild(new Options(this.ruhakony.qizys));
         return;
      }

      private function gageg(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.update(param1);
         return;
      }

      private function higeragil(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.draw(param1);
         return;
      }

      private function batanenim(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.setName(param1);
         return;
      }
   }

}