package nonyna
{
[CLASS495]   import tinava.Dab;
   import flash.events.MouseEvent;
   import haqakel.Kefyfa;


   public class NewChooseNameFrame extends Frame
   {
      public function NewChooseNameFrame() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(Kefyfa.vaguh,Kefyfa.palysiqu,Kefyfa.nohudidon,"/newChooseName");
         this.name_=new Cyb(Kefyfa.dok,false);
         this.name_.inputText_.restrict="A-Za-z";
         var _loc1_:* = 10;
         this.name_.inputText_.maxChars=_loc1_;
         sirutugu(this.name_);
         jow(Kefyfa.pusagafen,{maxChars:_loc1_});
         jow(Kefyfa.jyhyp);
         jow(Kefyfa.nijitylu);
         mycip.addEventListener(MouseEvent.CLICK,this.onCancel);
         mibyruji.addEventListener(MouseEvent.CLICK,this.vyhipavus);
         return;
      }

      public const choose:Dab = new Dab();

      public const cancel:Dab = new Dab();

      private var name_:Cyb;

      private function vyhipavus(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.choose.dispatch(this.name_.text());
         return;
      }

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cancel.dispatch();
         return;
      }

      public function famugujo(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.name_.famugujo(param1);
         return;
      }
   }
[/CLASS]
}