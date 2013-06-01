package ruwysepyd
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import meke.Dave;
   import com.company.assembleegameclient.objects.Kejomaz;
   import flash.display.Bitmap;
   import meke.IconButton;
   import movimet.Lufub;
   import gyzesuqu.Tybabukyr;
   import com.company.assembleegameclient.ui.Wusec;
   import com.company.assembleegameclient.ui.Kogigim;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.objects.Player;
   import nec.Nara;


   public class CharacterDetailsView extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function CharacterDetailsView() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gizysoz=new Hugyqufyq();
         this.pahecog=new Hugyqufyq();
         this.sypewe=new Bitmap(null);
         this.nameText_=new Lufub().setSize(20).setColor(11776947);
         this.cydycivab=new Tybabukyr(this.button,MouseEvent.CLICK);
         this.nom=new Tybabukyr(this.button,MouseEvent.CLICK);
         super();
         return;
      }

      public static const NEXUS_BUTTON:String = "NEXUS_BUTTON";

      public static const OPTIONS_BUTTON:String = "OPTIONS_BUTTON";

      public static const sed:String = "lofiInterfaceBig";

      public static const buh:int = 6;

      public static const rymyzacek:int = 5;

      public var gizysoz:Hugyqufyq;

      public var pahecog:Hugyqufyq;

      public var hoze:Dave;

      public var howu:Kejomaz;

      private var sypewe:Bitmap;

      private var button:IconButton;

      private var nameText_:Lufub;

      private var cydycivab:Tybabukyr;

      private var nom:Tybabukyr;

      private var tehezak:Wusec;

      private var divyry:Kogigim;

      public function init(param1:String, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.migubug();
         this.famyzehik(param1);
         this.cevycor(param2);
         return;
      }

      private function cevycor(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1==NEXUS_BUTTON)
         {
            this.button=this.hoze.create(this.howu.jeqycu(sed,buh),I18nKeys.tuwovyd,"escapeToNexus");
            this.cydycivab=new Tybabukyr(this.button,MouseEvent.CLICK,MouseEvent);
            this.cydycivab.add(this.weco);
         }
         else
         {
            if(param1==OPTIONS_BUTTON)
            {
               this.button=this.hoze.create(this.howu.jeqycu(sed,rymyzacek),I18nKeys.danewuty,"options");
               this.nom=new Tybabukyr(this.button,MouseEvent.CLICK,MouseEvent);
               this.nom.add(this.mytecyf);
            }
         }
         this.button.x=172;
         this.button.y=4;
         addChild(this.button);
         return;
      }

      private function migubug() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sypewe.x=-2;
         this.sypewe.y=-8;
         addChild(this.sypewe);
         return;
      }

      private function famyzehik(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nameText_.setBold(true);
         this.nameText_.x=36;
         this.nameText_.y=3;
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         this.setName(param1);
         addChild(this.nameText_);
         return;
      }

      public function update(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sypewe.bitmapData=param1.getPortrait();
         return;
      }

      public function draw(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.divyry)
         {
            this.divyry.update(param1.suqo);
         }
         if((param1.howohe)||(param1.zazumyfy))
         {
            this.tehezak=(this.tehezak)||(new Wusec(param1));
            if(this.sypewe)
            {
               this.sypewe.x=13;
            }
            if(this.nameText_)
            {
               this.nameText_.x=47;
            }
            this.tehezak.x=6;
            this.tehezak.y=5;
            addChild(this.tehezak);
         }
         else
         {
            if(this.tehezak)
            {
               removeChild(this.tehezak);
               this.tehezak=null;
               this.sypewe.x=-2;
               this.nameText_.x=36;
            }
         }
         return;
      }

      private function weco(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gizysoz.dispatch();
         return;
      }

      private function mytecyf(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pahecog.dispatch();
         return;
      }

      public function setName(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nameText_.setStringBuilder(new Nara(param1));
         return;
      }
   }

}