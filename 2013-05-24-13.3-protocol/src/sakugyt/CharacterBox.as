package sakugyt
{
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.appengine.Lycuhej;
   import hotewa.Baqifa;
   import flash.display.Bitmap;
   import movimet.Lufub;
   import qazoz.Nyzur;
   import gyzesuqu.Tybabukyr;
   import dilywopavy.GTween;
   import com.company.rotmg.graphics.FullCharBoxGraphic;
   import com.company.assembleegameclient.util.Zuwomuguk;
   import com.company.assembleegameclient.util.Wagoq;
   import flash.filters.DropShadowFilter;
   import povopito.Ryduwi;
   import povopito.Tecobeha;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import com.company.rotmg.graphics.StarGraphic;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
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

      public function CharacterBox(param1:XML, param2:Lycuhej, param3:Baqifa, param4:Boolean=false) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Sprite = null;
         this.zam=Gysiki;
         super();
         this.model=param3;
         this.playerXML_=param1;
         this.charStats_=param2;
         this.wurev=(param4)||(param3.komopiwyv(this.objectType()));
         if(!this.wurev)
         {
            this.kyges=new LockedCharBoxGraphic();
            this.cost=this.playerXML_.UnlockCost;
         }
         else
         {
            this.kyges=new FullCharBoxGraphic();
         }
         this.til=new Sprite();
         addChild(this.til);
         this.til.addChild(this.kyges);
         this.cucyzidy=new Tybabukyr(this.til,MouseEvent.CLICK,MouseEvent);
         this.bitmap_=new Bitmap(null);
         this.setImage(Zuwomuguk.DOWN,Zuwomuguk.pazyladar,0);
         this.kyges.addChild(this.bitmap_);
         this.classNameText_=new Lufub().setSize(14).setColor(16777215).setAutoSize(TextFieldAutoSize.CENTER).setTextWidth(this.kyges.width).setBold(true);
         this.classNameText_.setStringBuilder(new Sire().setParams(this.playerXML_.DisplayId));
         this.classNameText_.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         this.kyges.addChild(this.classNameText_);
         this.jal();
         this.fypi();
         if(this.wurev)
         {
            _loc5_=this.ridez(Wagoq.numStars(param3.fyqyhemeb(this.objectType())),Wagoq.qurubu.length);
            _loc5_.y=60;
            _loc5_.x=this.kyges.width/2-_loc5_.width/2;
            _loc5_.filters=[new DropShadowFilter(0,0,0,1,4,4)];
            this.til.addChild(_loc5_);
            this.classNameText_.y=74;
         }
         else
         {
            addChild(this.davoj);
            this.rudifuze=new Bitmap(AssetLibrary.jeqycu("lofiInterface2",5));
            this.rudifuze.scaleX=2;
            this.rudifuze.scaleY=2;
            this.rudifuze.x=4;
            this.rudifuze.y=8;
            addChild(this.rudifuze);
            addChild(this.suboreqip);
            this.classNameText_.y=78;
         }
         return;
      }

      public static const DELETE_CHAR:String = "DELETE_CHAR";

      public static const ENTER_NAME:String = "ENTER_NAME";

      private static const veduqifu:ColorTransform = new ColorTransform(0.8,0.8,0.8);

      private static const resig:ColorTransform = new ColorTransform(0.2,0.2,0.2);

      private var zam:Class;

      public var playerXML_:XML = null;

      public var charStats_:Lycuhej;

      public var model:Baqifa;

      public var wurev:Boolean;

      private var til:Sprite;

      private var kyges:Sprite;

      private var bitmap_:Bitmap;

      private var suboreqip:Lufub;

      private var classNameText_:Lufub;

      private var davoj:Nyzur;

      private var cost:int = 0;

      private var rudifuze:Bitmap;

      private var pis:Lufub;

      private var cibununo:Lufub;

      private var rekyvuge;

      public var haly:Tybabukyr;

      public var cucyzidy:Tybabukyr;

      public function objectType() : int {
         return int(this.playerXML_.@type);
      }

      public function unlock() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Sprite = null;
         var _loc2_:GTween = null;
         if(this.wurev==false)
         {
            this.wurev=true;
            this.til.removeChild(this.kyges);
            this.kyges=new FullCharBoxGraphic();
            this.til.addChild(this.kyges);
            this.setImage(Zuwomuguk.DOWN,Zuwomuguk.pazyladar,0);
            this.kyges.addChild(this.bitmap_);
            this.kyges.addChild(this.classNameText_);
            if(contains(this.suboreqip))
            {
               removeChild(this.suboreqip);
            }
            if(contains(this.davoj))
            {
               removeChild(this.davoj);
            }
            if((this.rudifuze)&&(contains(this.rudifuze)))
            {
               removeChild(this.rudifuze);
            }
            if((this.rekyvuge)&&(contains(this.rekyvuge)))
            {
               removeChild(this.rekyvuge);
            }
            if((this.pis)&&(contains(this.pis)))
            {
               removeChild(this.pis);
            }
            _loc1_=this.ridez(Wagoq.numStars(this.model.fyqyhemeb(this.objectType())),Wagoq.qurubu.length);
            _loc1_.y=60;
            _loc1_.x=this.kyges.width/2-_loc1_.width/2;
            _loc1_.filters=[new DropShadowFilter(0,0,0,1,4,4)];
            addChild(_loc1_);
            this.classNameText_.y=74;
            if(!this.cibununo)
            {
               this.peras();
            }
            addChild(this.cibununo);
            _loc2_=new GTween(this.cibununo,2.5,
               {
                  alpha:0.0,
                  y:-30
               }
            );
            _loc2_.onComplete=this.cyqukoq;
         }
         return;
      }

      private function cyqukoq(param1:GTween) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeChild(this.cibununo);
         return;
      }

      public function getTooltip() : Ryduwi {
         return new Tecobeha(this.playerXML_,this.model,this.charStats_);
      }

      public function gajyzucyl(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.wurev)
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
         this.bitmap_.bitmapData=SavedCharacter.getImage(null,this.playerXML_,param1,param2,param3,this.wurev,false);
         this.bitmap_.x=this.kyges.width/2-this.bitmap_.bitmapData.width/2;
         return;
      }

      private function ridez(param1:int, param2:int) : Sprite {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc5_:Sprite = null;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:* = 0;
         var _loc6_:* = 0;
         while(_loc4_<param1)
         {
            _loc5_=new StarGraphic();
            _loc5_.x=_loc6_;
            _loc5_.transform.colorTransform=veduqifu;
            _loc3_.addChild(_loc5_);
            _loc6_=_loc6_+_loc5_.width;
            _loc4_++;
         }
         while(_loc4_<param2)
         {
            _loc5_=new StarGraphic();
            _loc5_.x=_loc6_;
            _loc5_.transform.colorTransform=resig;
            _loc3_.addChild(_loc5_);
            _loc6_=_loc6_+_loc5_.width;
            _loc4_++;
         }
         return _loc3_;
      }

      public function mavuty(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.rekyvuge)
         {
            this.rekyvuge=new this.zam();
            this.rekyvuge.x=38;
            this.rekyvuge.y=8;
            addChild(this.rekyvuge);
         }
         if(!this.pis)
         {
            this.hohecakag();
            addChild(this.pis);
         }
         this.pis.setStringBuilder(new Sire().setParams(I18nKeys.nifejig,{percent:String(param1)}));
         return;
      }

      private function jal() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.davoj=new Nyzur(I18nKeys.tiwo,13,this.cost,Currency.fejubu);
         this.davoj.y=this.davoj.y+this.kyges.height;
         this.davoj.setWidth(this.kyges.width);
         this.haly=new Tybabukyr(this.davoj,MouseEvent.CLICK,MouseEvent);
         return;
      }

      private function fypi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.suboreqip=new Lufub().setSize(14).setColor(16711680).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setTextWidth(this.kyges.width);
         this.suboreqip.setStringBuilder(new Sire().setParams(I18nKeys.LOCKED));
         this.suboreqip.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         this.suboreqip.y=58;
         return;
      }

      private function hohecakag() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pis=new Lufub().setSize(14).setColor(16777215).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setTextHeight(this.rekyvuge.height).setTextWidth(this.rekyvuge.width);
         this.pis.x=42;
         this.pis.y=12;
         return;
      }

      private function peras() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cibununo=new Lufub().setSize(14).setColor(65280).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.cibununo.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         this.cibununo.setStringBuilder(new Sire().setParams(I18nKeys.bicosisyl));
         this.cibununo.y=-20;
         return;
      }

      public function turevyli(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.davoj.setEnabled(param1);
         return;
      }
   }

}