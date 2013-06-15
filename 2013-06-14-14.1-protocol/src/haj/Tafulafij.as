package haj
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.ui.Tivinu;
   import qykifavol.Hydydyqas;
   import wenono.Nuri;
   import fypeba.Rikuko;
   import flash.events.MouseEvent;


   public class Tafulafij extends Sprite
   {
      public function Tafulafij() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.buttonOne=new Tivinu(14,"buttonOne",70);
         this.buttonTwo=new Tivinu(14,"buttonTwo",70);
         this.mom=new Hydydyqas(this.buttonOne,MouseEvent.CLICK);
         this.wotytekyji=new Hydydyqas(this.buttonTwo,MouseEvent.CLICK);
         super();
         this.nilipu();
         this.qiz();
         return;
      }

      public var buttonOne:Tivinu;

      public var buttonTwo:Tivinu;

      public var mom:Hydydyqas;

      public var wotytekyji:Hydydyqas;

      private function qiz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.buttonOne);
         addChild(this.buttonTwo);
         return;
      }

      private function nilipu() : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Tivinu = null;
         var _loc1_:Array = [this.buttonOne,this.buttonTwo];
         var _loc2_:Nuri = new Nuri();
         for each (_loc3_ in _loc1_)
         {
            _loc2_.push(_loc3_.textChanged);
         }
         _loc2_.complete.addOnce(this.fosilul);
         return;
      }

      private function fosilul() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.buttonOne.x=Rikuko.pifi;
         this.buttonTwo.x=Rikuko.vyh-this.buttonTwo.width-Rikuko.pifi;
         return;
      }
   }

}