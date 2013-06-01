package rucedosu
{
[CLASS535]   import flash.display.Sprite;
   import viky.Wihury;
   import viky.Hoselyfov;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import pudev.Capitu;
   import pigeguwo.Mefu;
   import dutes.Zevazogo;
   import dutes.Soz;
   import flash.geom.Rectangle;
   import haqakel.Kefyfa;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.AssetLibrary;
   import vehesaj.Vadico;
   import totuhare.Zufi;
   import flash.filters.DropShadowFilter;


   public class GiftStatusDisplay extends Sprite implements Wihury
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function GiftStatusDisplay() {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Rectangle = null;
         var _loc2_:* = 0;
         this.tuhucysys=new Hoselyfov();
         this.tooltip=new Mefu(3552822,10197915,null,Kefyfa.mydywu,200);
         super();
         mouseChildren=false;
         this.qutofu=TextureRedrawer.redraw(AssetLibrary.zovy(nyc,kutuha),40,true,0,0);
         this.background=Vadico.cevafosan();
         this.nyjipamy=new Bitmap(this.qutofu);
         this.nyjipamy.x=-5;
         this.nyjipamy.y=-8;
         this.text=new Capitu().setSize(16).setColor(16777215);
         this.text.setStringBuilder(new Zufi().setParams(Kefyfa.nerahi));
         this.text.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         this.text.setVerticalAlign(Capitu.BOTTOM);
         this.tuhucysys.mosajo(this);
         this.tuhucysys.tooltip=this.tooltip;
         this.pigocy();
         _loc1_=this.nyjipamy.getBounds(this);
         _loc2_=10;
         this.text.x=_loc1_.right-_loc2_;
         this.text.y=_loc1_.bottom-_loc2_;
         return;
      }

      public static const nyc:String = "lofiObj2";

      public static const kutuha:int = 127;

      public static const doq:Number = 110;

      public static const hafenogic:Number = 25;

      public static const ralymakih:Number = 0.4;

      public static const farobivo:Number = 0;

      public var tuhucysys:Hoselyfov;

      private var nyjipamy:Bitmap;

      private var background:Sprite;

      private var qutofu:BitmapData;

      private var text:Capitu;

      private var tooltip:Mefu;

      public function suta(param1:Zevazogo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tuhucysys.suta(param1);
         return;
      }

      public function gorycici() : Zevazogo {
         return this.tuhucysys.gorycici();
      }

      public function myt(param1:Soz) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tuhucysys.myt(param1);
         return;
      }

      public function kodyqigiv() : Soz {
         return this.tuhucysys.kodyqigiv();
      }

      public function pigocy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.background);
         addChild(this.text);
         addChild(this.nyjipamy);
         return;
      }

      public function typopezi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.background)&&this.background.parent==this)
         {
            removeChild(this.background);
         }
         if((this.text)&&this.text.parent==this)
         {
            removeChild(this.text);
         }
         if((this.nyjipamy)&&this.nyjipamy.parent==this)
         {
            removeChild(this.nyjipamy);
         }
         return;
      }
   }
[/CLASS]
}