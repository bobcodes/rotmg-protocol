package tidi
{
[CLASS455]   import tysenyzy.Zovisis;
   import vinirudel.Wukyva;
   import nylos.Myqim;
   import nylos.Kyk;
   import nylos.Tifada;
   import zufazene.Tosisahin;
   import com.company.assembleegameclient.objects.Loqedobiq;
   import com.company.googleanalytics.GA;
   import com.company.assembleegameclient.parameters.Parameters;
   import cycygaj.Options;
   import com.company.assembleegameclient.objects.Player;


   public class Ticosuric extends Zovisis
   {
      public function Ticosuric() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:CharacterDetailsView;

      public var fysufapav:Wukyva;

      public var qyneba:Myqim;

      public var fyz:Kyk;

      public var mecanalos:Tifada;

      public var rihig:Tosisahin;

      public var tidiqor:Loqedobiq;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wimizus();
         this.view.init(this.fysufapav.mimidyh(),this.fysufapav.huheviz());
         this.fyz.addOnce(this.cad);
         this.fyz.add(this.ruwoku);
         this.mecanalos.add(this.rizeqej);
         this.view.kaju.add(this.qyfyfogi);
         this.view.supimu.add(this.munilu);
         return;
      }

      private function wimizus() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.rihig=this.rihig;
         this.view.tidiqor=this.tidiqor;
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fyz.remove(this.ruwoku);
         this.mecanalos.remove(this.rizeqej);
         this.view.kaju.remove(this.qyfyfogi);
         this.view.supimu.remove(this.munilu);
         return;
      }

      private function qyfyfogi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fysufapav.palaliz.gsc_.escape();
         GA.global().trackEvent("enterPortal","Nexus Button");
         Parameters.data_.needsRandomRealm=false;
         Parameters.save();
         return;
      }

      private function munilu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fysufapav.palaliz.mui_.clearInput();
         GA.global().trackEvent("options","Options Button");
         this.fysufapav.palaliz.addChild(new Options(this.fysufapav.palaliz));
         return;
      }

      private function cad(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.update(param1);
         return;
      }

      private function ruwoku(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.draw(param1);
         return;
      }

      private function rizeqej(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.setName(param1);
         return;
      }
   }
[/CLASS]
}