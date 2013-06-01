package golac
{
[CLASS190]   import pudev.Capitu;
   import flash.filters.DropShadowFilter;
   import tinava.Dab;
   import flash.display.DisplayObject;
   import totuhare.Javo;
   import totuhare.Zufi;
   import vehesaj.Vadico;
   import flash.events.MouseEvent;
   import kuniv.Nogofado;
   import com.company.assembleegameclient.util.Guleboqi;
   import haqakel.Kefyfa;
   import flash.events.Event;


   public class PackageButton extends Rusohuvo
   {
      public function PackageButton() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zokokof=new Dab();
         this.kime=makeText();
         this.zatewib=makeText();
         this.cic=new Javo("");
         this.rehikaj=new Zufi();
         super();
         return;
      }

      private static function makeText() : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Capitu = null;
         _loc1_=new Capitu().setSize(16).setColor(16777215);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         return _loc1_;
      }

      public var zokokof:Dab;

      private const zofyl:String = "showDuration";

      private const kav:String = "showQuantity";

      private var _state:String = "showDuration";

      private var ryburiw:DisplayObject;

      var kime:Capitu;

      var zatewib:Capitu;

      var cic:Javo;

      var rehikaj:Zufi;

      public function init() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(Vadico.cevafosan());
         addChild(this.kime);
         addEventListener(MouseEvent.MOUSE_UP,this.jefazus);
         this.setIcon(makeIcon());
         return;
      }

      private function setState(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this._state==param1)
         {
            return;
         }
         if(param1==this.zofyl)
         {
            removeChild(this.zatewib);
            addChild(this.kime);
         }
         else
         {
            if(param1==this.kav)
            {
               removeChild(this.kime);
               addChild(this.zatewib);
            }
            else
            {
               throw new Error("PackageButton.setState: Unexpected state "+param1);
            }
         }
         this._state=param1;
         return;
      }

      public function lyryfucat(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==Nogofado.revizoti)
         {
            this.setState(this.zofyl);
         }
         else
         {
            this.setState(this.kav);
         }
         this.zatewib.textChanged.addOnce(this.layout);
         this.cic.setString(param1.toString());
         this.zatewib.setStringBuilder(this.cic);
         return;
      }

      public function takaqijem(param1:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:String = null;
         var _loc2_:int = Math.ceil(param1/Guleboqi.lasohoboc);
         if(_loc2_>1)
         {
            _loc3_=Kefyfa.mydi;
         }
         else
         {
            _loc3_=Kefyfa.lasag;
         }
         this.kime.textChanged.addOnce(this.layout);
         this.rehikaj.setParams(_loc3_,{number:_loc2_});
         this.kime.setStringBuilder(this.rehikaj);
         return;
      }

      private function layout() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         positionText(this.ryburiw,this.kime);
         positionText(this.ryburiw,this.zatewib);
         return;
      }

      public function setIcon(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ryburiw=param1;
         addChild(param1);
         return;
      }

      public function getIcon() : DisplayObject {
         return this.ryburiw;
      }

      private function jefazus(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zokokof.dispatch();
         return;
      }
   }
[/CLASS]
}