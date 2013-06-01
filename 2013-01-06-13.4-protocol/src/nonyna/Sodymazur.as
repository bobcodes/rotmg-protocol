package nonyna
{
[CLASS466]   import tinava.Dab;
   import com.company.assembleegameclient.game.Tosahafu;
   import flash.events.MouseEvent;
   import haqakel.Kefyfa;


   public class Sodymazur extends Frame
   {
      public function Sodymazur(param1:Tosahafu, param2:Boolean) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(Kefyfa.vaguh,Kefyfa.palysiqu,Kefyfa.nohudidon,"/chooseName");
         this.palaliz=param1;
         this.kyvewivor=param2;
         this.toqi=new Cyb(Kefyfa.pymabu,false);
         this.toqi.inputText_.restrict="A-Za-z";
         var _loc3_:* = 10;
         this.toqi.inputText_.maxChars=_loc3_;
         sirutugu(this.toqi);
         jow(Kefyfa.pusagafen,{maxChars:_loc3_});
         jow(Kefyfa.jyhyp);
         jow(Kefyfa.nijitylu);
         mycip.addEventListener(MouseEvent.CLICK,this.onCancel);
         mibyruji.addEventListener(MouseEvent.CLICK,this.vyhipavus);
         return;
      }

      public const cancel:Dab = new Dab();

      public const choose:Dab = new Dab(String);

      public var palaliz:Tosahafu;

      public var kyvewivor:Boolean;

      private var toqi:Cyb;

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cancel.dispatch();
         return;
      }

      private function vyhipavus(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.choose.dispatch(this.toqi.text());
         disable();
         return;
      }

      public function famugujo(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.toqi.famugujo(param1);
         return;
      }
   }
[/CLASS]
}