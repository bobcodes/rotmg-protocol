package qilarag
{
[CLASS1046]   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.appengine.Wus;
   import dylaqezo.Vusun;
   import flash.display.Bitmap;
   import pudev.Capitu;
   import gicuzum.Caty;
   import zehus.Caje;
   import barotuvy.GTween;
   import com.company.rotmg.graphics.FullCharBoxGraphic;
   import com.company.assembleegameclient.util.Huroj;
   import com.company.assembleegameclient.util.Gugi;
   import flash.filters.DropShadowFilter;
   import pigeguwo.Jazyv;
   import pigeguwo.Vilo;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import com.company.rotmg.graphics.StarGraphic;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import com.company.assembleegameclient.util.Currency;
   import flash.events.MouseEvent;
   import flash.text.TextFieldAutoSize;
   import com.company.rotmg.graphics.LockedCharBoxGraphic;
   import com.company.util.AssetLibrary;


   public class CharacterBox extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function CharacterBox(param1:XML, param2:Wus, param3:Vusun, param4:Boolean=false) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Sprite = null;
         this.giruj=Qorekor;
         super();
         this.model=param3;
         this.playerXML_=param1;
         this.charStats_=param2;
         this.kowybuwu=(param4)||(param3.mobacek(this.objectType()));
         if(!this.kowybuwu)
         {
            this.hefopyho=new LockedCharBoxGraphic();
            this.cost=this.playerXML_.UnlockCost;
         }
         else
         {
            this.hefopyho=new FullCharBoxGraphic();
         }
         this.tapuluqav=new Sprite();
         addChild(this.tapuluqav);
         this.tapuluqav.addChild(this.hefopyho);
         this.vily=new Caje(this.tapuluqav,MouseEvent.CLICK,MouseEvent);
         this.bitmap_=new Bitmap(null);
         this.setImage(Huroj.DOWN,Huroj.wyqel,0);
         this.hefopyho.addChild(this.bitmap_);
         this.classNameText_=new Capitu().setSize(14).setColor(16777215).setAutoSize(TextFieldAutoSize.CENTER).setTextWidth(this.hefopyho.width).setBold(true);
         this.classNameText_.setStringBuilder(new Zufi().setParams(this.playerXML_.DisplayId));
         this.classNameText_.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         this.hefopyho.addChild(this.classNameText_);
         this.fotykes();
         this.tubosum();
         if(this.kowybuwu)
         {
            _loc5_=this.casokaji(Gugi.numStars(param3.zot(this.objectType())),Gugi.kusifapi.length);
            _loc5_.y=60;
            _loc5_.x=this.hefopyho.width/2-_loc5_.width/2;
            _loc5_.filters=[new DropShadowFilter(0,0,0,1,4,4)];
            this.tapuluqav.addChild(_loc5_);
            this.classNameText_.y=74;
         }
         else
         {
            addChild(this.zazibin);
            this.mepope=new Bitmap(AssetLibrary.zovy("lofiInterface2",5));
            this.mepope.scaleX=2;
            this.mepope.scaleY=2;
            this.mepope.x=4;
            this.mepope.y=8;
            addChild(this.mepope);
            addChild(this.jepewuw);
            this.classNameText_.y=78;
         }
         return;
      }

      public static const DELETE_CHAR:String = "DELETE_CHAR";

      public static const ENTER_NAME:String = "ENTER_NAME";

      private static const mipudi:ColorTransform = new ColorTransform(0.8,0.8,0.8);

      private static const toku:ColorTransform = new ColorTransform(0.2,0.2,0.2);

      private var giruj:Class;

      public var playerXML_:XML = null;

      public var charStats_:Wus;

      public var model:Vusun;

      public var kowybuwu:Boolean;

      private var tapuluqav:Sprite;

      private var hefopyho:Sprite;

      private var bitmap_:Bitmap;

      private var jepewuw:Capitu;

      private var classNameText_:Capitu;

      private var zazibin:Caty;

      private var cost:int = 0;

      private var mepope:Bitmap;

      private var nicilakum:Capitu;

      private var qomipyz:Capitu;

      private var gytyt;

      public var nosofad:Caje;

      public var vily:Caje;

      public function objectType() : int {
         return int(this.playerXML_.@type);
      }

      public function unlock() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Sprite = null;
         var _loc2_:GTween = null;
         if(this.kowybuwu==false)
         {
            this.kowybuwu=true;
            this.tapuluqav.removeChild(this.hefopyho);
            this.hefopyho=new FullCharBoxGraphic();
            this.tapuluqav.addChild(this.hefopyho);
            this.setImage(Huroj.DOWN,Huroj.wyqel,0);
            this.hefopyho.addChild(this.bitmap_);
            this.hefopyho.addChild(this.classNameText_);
            if(contains(this.jepewuw))
            {
               removeChild(this.jepewuw);
            }
            if(contains(this.zazibin))
            {
               removeChild(this.zazibin);
            }
            if((this.mepope)&&(contains(this.mepope)))
            {
               removeChild(this.mepope);
            }
            if((this.gytyt)&&(contains(this.gytyt)))
            {
               removeChild(this.gytyt);
            }
            if((this.nicilakum)&&(contains(this.nicilakum)))
            {
               removeChild(this.nicilakum);
            }
            _loc1_=this.casokaji(Gugi.numStars(this.model.zot(this.objectType())),Gugi.kusifapi.length);
            _loc1_.y=60;
            _loc1_.x=this.hefopyho.width/2-_loc1_.width/2;
            _loc1_.filters=[new DropShadowFilter(0,0,0,1,4,4)];
            addChild(_loc1_);
            this.classNameText_.y=74;
            if(!this.qomipyz)
            {
               this.zyr();
            }
            addChild(this.qomipyz);
            _loc2_=new GTween(this.qomipyz,2.5,
               {
                  alpha:0.0,
                  y:-30
               }
            );
            _loc2_.onComplete=this.rofikodoq;
         }
         return;
      }

      private function rofikodoq(param1:GTween) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeChild(this.qomipyz);
         return;
      }

      public function getTooltip() : Jazyv {
         return new Vilo(this.playerXML_,this.model,this.charStats_);
      }

      public function qokyfuza(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.kowybuwu)
         {
            return;
         }
         if(param1)
         {
            transform.colorTransform=new ColorTransform(1.2,1.2,1.2);
         }
         else
         {
            transform.colorTransform=new ColorTransform(1,1,1);
         }
         return;
      }

      private function setImage(param1:int, param2:int, param3:Number) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.bitmap_.bitmapData=SavedCharacter.getImage(null,this.playerXML_,param1,param2,param3,this.kowybuwu,false);
         this.bitmap_.x=this.hefopyho.width/2-this.bitmap_.bitmapData.width/2;
         return;
      }

      private function casokaji(param1:int, param2:int) : Sprite {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:Sprite = null;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:* = 0;
         var _loc6_:* = 0;
         while(_loc4_<param1)
         {
            _loc5_=new StarGraphic();
            _loc5_.x=_loc6_;
            _loc5_.transform.colorTransform=mipudi;
            _loc3_.addChild(_loc5_);
            _loc6_=_loc6_+_loc5_.width;
            _loc4_++;
         }
         while(_loc4_<param2)
         {
            _loc5_=new StarGraphic();
            _loc5_.x=_loc6_;
            _loc5_.transform.colorTransform=toku;
            _loc3_.addChild(_loc5_);
            _loc6_=_loc6_+_loc5_.width;
            _loc4_++;
         }
         return _loc3_;
      }

      public function tede(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.gytyt)
         {
            this.gytyt=new this.giruj();
            this.gytyt.x=38;
            this.gytyt.y=8;
            addChild(this.gytyt);
         }
         if(!this.nicilakum)
         {
            this.rilutir();
            addChild(this.nicilakum);
         }
         this.nicilakum.setStringBuilder(new Zufi().setParams(Kefyfa.naruhutyj,{percent:String(param1)}));
         return;
      }

      private function fotykes() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zazibin=new Caty(Kefyfa.fekybohyv,13,this.cost,Currency.vusap);
         this.zazibin.y=this.zazibin.y+this.hefopyho.height;
         this.zazibin.setWidth(this.hefopyho.width);
         this.nosofad=new Caje(this.zazibin,MouseEvent.CLICK,MouseEvent);
         return;
      }

      private function tubosum() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jepewuw=new Capitu().setSize(14).setColor(16711680).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setTextWidth(this.hefopyho.width);
         this.jepewuw.setStringBuilder(new Zufi().setParams(Kefyfa.LOCKED));
         this.jepewuw.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         this.jepewuw.y=58;
         return;
      }

      private function rilutir() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nicilakum=new Capitu().setSize(14).setColor(16777215).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setTextHeight(this.gytyt.height).setTextWidth(this.gytyt.width);
         this.nicilakum.x=42;
         this.nicilakum.y=12;
         return;
      }

      private function zyr() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qomipyz=new Capitu().setSize(14).setColor(65280).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.qomipyz.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         this.qomipyz.setStringBuilder(new Zufi().setParams(Kefyfa.peduwu));
         this.qomipyz.y=-20;
         return;
      }

      public function zybow(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zazibin.setEnabled(param1);
         return;
      }
   }
[/CLASS]
}