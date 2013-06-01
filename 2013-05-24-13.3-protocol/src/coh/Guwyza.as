package coh
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import gyzesuqu.Tybabukyr;
   import ruwysepyd.Junefolef;
   import qucuqesif.Qemo;
   import flash.events.MouseEvent;


   public class Guwyza extends Sprite
   {
      public function Guwyza() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.buttonOne=new Dogyqijec(14,"buttonOne",70);
         this.buttonTwo=new Dogyqijec(14,"buttonTwo",70);
         this.naduwele=new Tybabukyr(this.buttonOne,MouseEvent.CLICK);
         this.dyfoqazel=new Tybabukyr(this.buttonTwo,MouseEvent.CLICK);
         super();
         this.gogujituh();
         this.pijifivil();
         return;
      }

      public var buttonOne:Dogyqijec;

      public var buttonTwo:Dogyqijec;

      public var naduwele:Tybabukyr;

      public var dyfoqazel:Tybabukyr;

      private function pijifivil() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.buttonOne);
         addChild(this.buttonTwo);
         return;
      }

      private function gogujituh() : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Dogyqijec = null;
         var _loc1_:Array = [this.buttonOne,this.buttonTwo];
         var _loc2_:Junefolef = new Junefolef();
         for each (_loc3_ in _loc1_)
         {
            _loc2_.push(_loc3_.textChanged);
         }
         _loc2_.complete.addOnce(this.bivyluwuf);
         return;
      }

      private function bivyluwuf() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.buttonOne.x=Qemo.vaqe;
         this.buttonTwo.x=Qemo.rufub-this.buttonTwo.width-Qemo.vaqe;
         return;
      }
   }

}