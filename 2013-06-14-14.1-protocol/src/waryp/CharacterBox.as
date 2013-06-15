package waryp
{
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.appengine.Zef;
   import lemugo.Wokycuku;
   import flash.display.Bitmap;
   import hivysif.Guzowoja;
   import bemav.Telir;
   import qykifavol.Hydydyqas;
   import buryq.GTween;
   import com.company.rotmg.graphics.FullCharBoxGraphic;
   import com.company.assembleegameclient.util.Jiqefatok;
   import com.company.assembleegameclient.util.Cinihel;
   import flash.filters.DropShadowFilter;
   import mavew.Qyryl;
   import mavew.Duqaqol;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import com.company.rotmg.graphics.StarGraphic;
   import jediwip.Kybidu;
   import komi.Vibemod;
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

      public function CharacterBox(param1:XML, param2:Zef, param3:Wokycuku, param4:Boolean=false) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Sprite = null;
         this.wicerafi=Sydehut;
         super();
         this.model=param3;
         this.playerXML_=param1;
         this.charStats_=param2;
         this.nusicube=(param4)||(param3.wewe(this.objectType()));
         if(!this.nusicube)
         {
            this.pipevilek=new LockedCharBoxGraphic();
            this.cost=this.playerXML_.UnlockCost;
         }
         else
         {
            this.pipevilek=new FullCharBoxGraphic();
         }
         this.redeceziw=new Sprite();
         addChild(this.redeceziw);
         this.redeceziw.addChild(this.pipevilek);
         this.tebiwup=new Hydydyqas(this.redeceziw,MouseEvent.CLICK,MouseEvent);
         this.bitmap_=new Bitmap(null);
         this.setImage(Jiqefatok.DOWN,Jiqefatok.radev,0);
         this.pipevilek.addChild(this.bitmap_);
         this.classNameText_=new Guzowoja().setSize(14).setColor(16777215).setAutoSize(TextFieldAutoSize.CENTER).setTextWidth(this.pipevilek.width).setBold(true);
         this.classNameText_.setStringBuilder(new Kybidu().setParams(this.playerXML_.DisplayId));
         this.classNameText_.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         this.pipevilek.addChild(this.classNameText_);
         this.nisopyba();
         this.zirozyvuko();
         if(this.nusicube)
         {
            _loc5_=this.lod(Cinihel.numStars(param3.gycyfih(this.objectType())),Cinihel.zebifyf.length);
            _loc5_.y=60;
            _loc5_.x=this.pipevilek.width/2-_loc5_.width/2;
            _loc5_.filters=[new DropShadowFilter(0,0,0,1,4,4)];
            this.redeceziw.addChild(_loc5_);
            this.classNameText_.y=74;
         }
         else
         {
            addChild(this.deveti);
            this.zec=new Bitmap(AssetLibrary.tem("lofiInterface2",5));
            this.zec.scaleX=2;
            this.zec.scaleY=2;
            this.zec.x=4;
            this.zec.y=8;
            addChild(this.zec);
            addChild(this.vahul);
            this.classNameText_.y=78;
         }
         return;
      }

      public static const GlobalNotificationActionTE_CHAR:String = "GlobalNotificationActionTE_CHAR";

      public static const ENTER_NAME:String = "ENTER_NAME";

      private static const fiwewu:ColorTransform = new ColorTransform(0.8,0.8,0.8);

      private static const muvivu:ColorTransform = new ColorTransform(0.2,0.2,0.2);

      private var wicerafi:Class;

      public var playerXML_:XML = null;

      public var charStats_:Zef;

      public var model:Wokycuku;

      public var nusicube:Boolean;

      private var redeceziw:Sprite;

      private var pipevilek:Sprite;

      private var bitmap_:Bitmap;

      private var vahul:Guzowoja;

      private var classNameText_:Guzowoja;

      private var deveti:Telir;

      private var cost:int = 0;

      private var zec:Bitmap;

      private var bim:Guzowoja;

      private var vevizyw:Guzowoja;

      private var vuv;

      public var vefojizy:Hydydyqas;

      public var tebiwup:Hydydyqas;

      public function objectType() : int {
         return int(this.playerXML_.@type);
      }

      public function unlock() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Sprite = null;
         var _loc2_:GTween = null;
         if(this.nusicube==false)
         {
            this.nusicube=true;
            this.redeceziw.removeChild(this.pipevilek);
            this.pipevilek=new FullCharBoxGraphic();
            this.redeceziw.addChild(this.pipevilek);
            this.setImage(Jiqefatok.DOWN,Jiqefatok.radev,0);
            this.pipevilek.addChild(this.bitmap_);
            this.pipevilek.addChild(this.classNameText_);
            if(contains(this.vahul))
            {
               removeChild(this.vahul);
            }
            if(contains(this.deveti))
            {
               removeChild(this.deveti);
            }
            if((this.zec)&&(contains(this.zec)))
            {
               removeChild(this.zec);
            }
            if((this.vuv)&&(contains(this.vuv)))
            {
               removeChild(this.vuv);
            }
            if((this.bim)&&(contains(this.bim)))
            {
               removeChild(this.bim);
            }
            _loc1_=this.lod(Cinihel.numStars(this.model.gycyfih(this.objectType())),Cinihel.zebifyf.length);
            _loc1_.y=60;
            _loc1_.x=this.pipevilek.width/2-_loc1_.width/2;
            _loc1_.filters=[new DropShadowFilter(0,0,0,1,4,4)];
            addChild(_loc1_);
            this.classNameText_.y=74;
            if(!this.vevizyw)
            {
               this.najoduz();
            }
            addChild(this.vevizyw);
            _loc2_=new GTween(this.vevizyw,2.5,
               {
                  alpha:0.0,
                  y:-30
               }
            );
            _loc2_.onComplete=this.kylopi;
         }
         return;
      }

      private function kylopi(param1:GTween) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeChild(this.vevizyw);
         return;
      }

      public function getTooltip() : Qyryl {
         return new Duqaqol(this.playerXML_,this.model,this.charStats_);
      }

      public function rewokeloc(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.nusicube)
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
         this.bitmap_.bitmapData=SavedCharacter.getImage(null,this.playerXML_,param1,param2,param3,this.nusicube,false);
         this.bitmap_.x=this.pipevilek.width/2-this.bitmap_.bitmapData.width/2;
         return;
      }

      private function lod(param1:int, param2:int) : Sprite {
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
            _loc5_.transform.colorTransform=fiwewu;
            _loc3_.addChild(_loc5_);
            _loc6_=_loc6_+_loc5_.width;
            _loc4_++;
         }
         while(_loc4_<param2)
         {
            _loc5_=new StarGraphic();
            _loc5_.x=_loc6_;
            _loc5_.transform.colorTransform=muvivu;
            _loc3_.addChild(_loc5_);
            _loc6_=_loc6_+_loc5_.width;
            _loc4_++;
         }
         return _loc3_;
      }

      public function vofulapu(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.vuv)
         {
            this.vuv=new this.wicerafi();
            this.vuv.x=38;
            this.vuv.y=8;
            addChild(this.vuv);
         }
         if(!this.bim)
         {
            this.mak();
            addChild(this.bim);
         }
         this.bim.setStringBuilder(new Kybidu().setParams(Vibemod.senefosu,{percent:String(param1)}));
         return;
      }

      private function nisopyba() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.deveti=new Telir(Vibemod.huj,13,this.cost,Currency.win);
         this.deveti.y=this.deveti.y+this.pipevilek.height;
         this.deveti.setWidth(this.pipevilek.width);
         this.vefojizy=new Hydydyqas(this.deveti,MouseEvent.CLICK,MouseEvent);
         return;
      }

      private function zirozyvuko() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vahul=new Guzowoja().setSize(14).setColor(16711680).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setTextWidth(this.pipevilek.width);
         this.vahul.setStringBuilder(new Kybidu().setParams(Vibemod.LOCKED));
         this.vahul.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         this.vahul.y=58;
         return;
      }

      private function mak() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bim=new Guzowoja().setSize(14).setColor(16777215).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setTextHeight(this.vuv.height).setTextWidth(this.vuv.width);
         this.bim.x=42;
         this.bim.y=12;
         return;
      }

      private function najoduz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vevizyw=new Guzowoja().setSize(14).setColor(65280).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.vevizyw.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         this.vevizyw.setStringBuilder(new Kybidu().setParams(Vibemod.kohugifas));
         this.vevizyw.y=-20;
         return;
      }

      public function rakydi(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.deveti.setEnabled(param1);
         return;
      }
   }

}