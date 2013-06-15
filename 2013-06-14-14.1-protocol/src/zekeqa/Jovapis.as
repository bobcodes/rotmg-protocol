package zekeqa
{
   import tytojonib.Kyjefe;
   import cizagamym.Lebovas;
   import pomujukir.Cuqoseze;
   import pusy.Lyfezy;
   import com.company.assembleegameclient.game.Pajemiz;
   import huv.Buhata;
   import suzen.Kodufanin;
   import com.company.assembleegameclient.parameters.Parameters;


   public class Jovapis extends Kyjefe
   {
      public function Jovapis() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Nohysoj;

      public var closeDialogs:Lebovas;

      public var trackEvent:Cuqoseze;

      public var foryc:Lyfezy;

      private var qyhowo:Pajemiz;

      private var name:String;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qyhowo=this.view.qyhowo;
         this.view.choose.add(this.kysotyz);
         this.view.cancel.add(this.onCancel);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.choose.remove(this.kysotyz);
         this.view.cancel.remove(this.onCancel);
         return;
      }

      private function kysotyz(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.name=param1;
         this.qyhowo.addEventListener(Buhata.NAMERESULTEVENT,this.gire);
         this.qyhowo.gsc_.chooseName(param1);
         this.view.disable();
         return;
      }

      public function gire(param1:Buhata) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.qyhowo.removeEventListener(Buhata.NAMERESULTEVENT,this.gire);
         var _loc2_:Boolean = param1.porotof.success_;
         if(_loc2_)
         {
            this.depudota();
         }
         else
         {
            this.ranuqiza(param1.porotof.errorText_);
         }
         return;
      }

      private function depudota() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.view.qaker)
         {
            this.nyfawos();
         }
         this.qyhowo.model.setName(this.name);
         this.closeDialogs.dispatch();
         this.foryc.dispatch(this.name);
         return;
      }

      private function nyfawos() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Kodufanin = new Kodufanin();
         _loc1_.category="credits";
         _loc1_.hukepej=this.qyhowo.model.getConverted()?"buyConverted":"buy";
         _loc1_.label="Name Change";
         _loc1_.value=Parameters.juf;
         this.trackEvent.dispatch(_loc1_);
         return;
      }

      private function ranuqiza(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.nirin(param1);
         this.view.kafuwuge();
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closeDialogs.dispatch();
         return;
      }
   }

}