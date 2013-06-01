package fyvanod
{
[CLASS933]   import flash.display.Sprite;
   import com.company.assembleegameclient.ui.Cid;
   import zehus.Caje;
   import tidi.Dak;
   import kozaligov.Cinijyt;
   import flash.events.MouseEvent;


   public class Fimyr extends Sprite
   {
      public function Fimyr() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.buttonOne=new Cid(14,"buttonOne",70);
         this.buttonTwo=new Cid(14,"buttonTwo",70);
         this.nykycaj=new Caje(this.buttonOne,MouseEvent.CLICK);
         this.joqiha=new Caje(this.buttonTwo,MouseEvent.CLICK);
         super();
         this.gyfil();
         this.gyqo();
         return;
      }

      public var buttonOne:Cid;

      public var buttonTwo:Cid;

      public var nykycaj:Caje;

      public var joqiha:Caje;

      private function gyqo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.buttonOne);
         addChild(this.buttonTwo);
         return;
      }

      private function gyfil() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Cid = null;
         var _loc1_:Array = [this.buttonOne,this.buttonTwo];
         var _loc2_:Dak = new Dak();
         for each (_loc3_ in _loc1_)
         {
            _loc2_.push(_loc3_.textChanged);
         }
         _loc2_.complete.addOnce(this.cibeqel);
         return;
      }

      private function cibeqel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.buttonOne.x=Cinijyt.defydep;
         this.buttonTwo.x=Cinijyt.lihunohoc-this.buttonTwo.width-Cinijyt.defydep;
         return;
      }
   }
[/CLASS]
}