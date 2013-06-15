package tilo
{
   import hivysif.Guzowoja;
   import flash.filters.DropShadowFilter;
   import mukyrosu.Qanyduk;
   import flash.display.DisplayObject;
   import jediwip.Vofezuzy;
   import jediwip.Kybidu;
   import zutudytod.Burijedot;
   import flash.events.MouseEvent;
   import wavybyjec.Sucy;
   import com.company.assembleegameclient.util.Wigi;
   import komi.Vibemod;
   import flash.events.Event;


   public class PackageButton extends Lewe
   {
      public function PackageButton() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.peqe=new Qanyduk();
         this.cugiced=makeText();
         this.sudeguly=makeText();
         this.duhunawat=new Vofezuzy("");
         this.bojub=new Kybidu();
         super();
         return;
      }

      private static function makeText() : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Guzowoja = null;
         _loc1_=new Guzowoja().setSize(16).setColor(16777215);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         return _loc1_;
      }

      public var peqe:Qanyduk;

      private const dija:String = "showDuration";

      private const fehudyzeh:String = "showQuantity";

      private var _state:String = "showDuration";

      private var zos:DisplayObject;

      var cugiced:Guzowoja;

      var sudeguly:Guzowoja;

      var duhunawat:Vofezuzy;

      var bojub:Kybidu;

      public function init() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(Burijedot.josymype());
         addChild(this.cugiced);
         addEventListener(MouseEvent.MOUSE_UP,this.honoraj);
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
         if(param1==this.dija)
         {
            removeChild(this.sudeguly);
            addChild(this.cugiced);
         }
         else
         {
            if(param1==this.fehudyzeh)
            {
               removeChild(this.cugiced);
               addChild(this.sudeguly);
            }
            else
            {
               throw new Error("PackageButton.setState: Unexpected state "+param1);
            }
         }
         this._state=param1;
         return;
      }

      public function lylebype(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1==Sucy.jybycadaf)
         {
            this.setState(this.dija);
         }
         else
         {
            this.setState(this.fehudyzeh);
         }
         this.sudeguly.textChanged.addOnce(this.layout);
         this.duhunawat.setString(param1.toString());
         this.sudeguly.setStringBuilder(this.duhunawat);
         return;
      }

      public function his(param1:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:String = null;
         var _loc2_:int = Math.ceil(param1/Wigi.gygifuky);
         if(_loc2_>1)
         {
            _loc3_=Vibemod.pisupoki;
         }
         else
         {
            _loc3_=Vibemod.monat;
         }
         this.cugiced.textChanged.addOnce(this.layout);
         this.bojub.setParams(_loc3_,{number:_loc2_});
         this.cugiced.setStringBuilder(this.bojub);
         return;
      }

      private function layout() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         positionText(this.zos,this.cugiced);
         positionText(this.zos,this.sudeguly);
         return;
      }

      public function setIcon(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zos=param1;
         addChild(param1);
         return;
      }

      public function getIcon() : DisplayObject {
         return this.zos;
      }

      private function honoraj(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.peqe.dispatch();
         return;
      }
   }

}