package liwaqa
{
   import movimet.Lufub;
   import flash.filters.DropShadowFilter;
   import tulunyno.Hugyqufyq;
   import flash.display.DisplayObject;
   import nec.Nara;
   import nec.Sire;
   import jybazigiq.Litewev;
   import flash.events.MouseEvent;
   import damul.Qyfa;
   import com.company.assembleegameclient.util.Pygymy;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.events.Event;


   public class PackageButton extends Pydep
   {
      public function PackageButton() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.siperu=new Hugyqufyq();
         this.zel=makeText();
         this.syr=makeText();
         this.zyweny=new Nara("");
         this.hirez=new Sire();
         super();
         return;
      }

      private static function makeText() : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lufub = null;
         _loc1_=new Lufub().setSize(16).setColor(16777215);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         return _loc1_;
      }

      public var siperu:Hugyqufyq;

      private const civetaby:String = "showDuration";

      private const todezy:String = "showQuantity";

      private var _state:String = "showDuration";

      private var las:DisplayObject;

      var zel:Lufub;

      var syr:Lufub;

      var zyweny:Nara;

      var hirez:Sire;

      public function init() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(Litewev.jeroqonaw());
         addChild(this.zel);
         addEventListener(MouseEvent.MOUSE_UP,this.gomivy);
         this.setIcon(makeIcon());
         return;
      }

      private function setState(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this._state==param1)
         {
            return;
         }
         if(param1==this.civetaby)
         {
            removeChild(this.syr);
            addChild(this.zel);
         }
         else
         {
            if(param1==this.todezy)
            {
               removeChild(this.zel);
               addChild(this.syr);
            }
            else
            {
               throw new Error("PackageButton.setState: Unexpected state "+param1);
            }
         }
         this._state=param1;
         return;
      }

      public function futara(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1==Qyfa.menoqecot)
         {
            this.setState(this.civetaby);
         }
         else
         {
            this.setState(this.todezy);
         }
         this.syr.textChanged.addOnce(this.layout);
         this.zyweny.setString(param1.toString());
         this.syr.setStringBuilder(this.zyweny);
         return;
      }

      public function diquhuku(param1:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:String = null;
         var _loc2_:int = Math.ceil(param1/Pygymy.tygadi);
         if(_loc2_>1)
         {
            _loc3_=I18nKeys.tuziwe;
         }
         else
         {
            _loc3_=I18nKeys.nyzobaqa;
         }
         this.zel.textChanged.addOnce(this.layout);
         this.hirez.setParams(_loc3_,{number:_loc2_});
         this.zel.setStringBuilder(this.hirez);
         return;
      }

      private function layout() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         positionText(this.las,this.zel);
         positionText(this.las,this.syr);
         return;
      }

      public function setIcon(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.las=param1;
         addChild(param1);
         return;
      }

      public function getIcon() : DisplayObject {
         return this.las;
      }

      private function gomivy(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.siperu.dispatch();
         return;
      }
   }

}