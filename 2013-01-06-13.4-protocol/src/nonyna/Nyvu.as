package nonyna
{
[CLASS484]   import tysenyzy.Zovisis;
   import kirofyny.Tiqimav;
   import dutes.Rumevo;
   import nylos.Tifada;
   import com.company.assembleegameclient.game.Tosahafu;
   import jodahije.Zadeped;
   import jezi.Pyruleq;
   import com.company.assembleegameclient.parameters.Parameters;


   public class Nyvu extends Zovisis
   {
      public function Nyvu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Sodymazur;

      public var closeDialogs:Tiqimav;

      public var trackEvent:Rumevo;

      public var mecanalos:Tifada;

      private var palaliz:Tosahafu;

      private var name:String;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.palaliz=this.view.palaliz;
         this.view.choose.add(this.vyhipavus);
         this.view.cancel.add(this.onCancel);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.choose.remove(this.vyhipavus);
         this.view.cancel.remove(this.onCancel);
         return;
      }

      private function vyhipavus(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.name=param1;
         this.palaliz.addEventListener(Zadeped.NAMERESULTEVENT,this.cewu);
         this.palaliz.gsc_.chooseName(param1);
         this.view.disable();
         return;
      }

      public function cewu(param1:Zadeped) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.palaliz.removeEventListener(Zadeped.NAMERESULTEVENT,this.cewu);
         var _loc2_:Boolean = param1.purimed.success_;
         if(_loc2_)
         {
            this.zajanevah();
         }
         else
         {
            this.bukote(param1.purimed.errorText_);
         }
         return;
      }

      private function zajanevah() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.view.kyvewivor)
         {
            this.nojehamek();
         }
         this.palaliz.model.setName(this.name);
         this.closeDialogs.dispatch();
         this.mecanalos.dispatch(this.name);
         return;
      }

      private function nojehamek() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Pyruleq = new Pyruleq();
         _loc1_.category="credits";
         _loc1_.bozegyt=this.palaliz.model.getConverted()?"buyConverted":"buy";
         _loc1_.label="Name Change";
         _loc1_.value=Parameters.pazyb;
         this.trackEvent.dispatch(_loc1_);
         return;
      }

      private function bukote(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.famugujo(param1);
         this.view.kiwimuj();
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }
   }
[/CLASS]
}