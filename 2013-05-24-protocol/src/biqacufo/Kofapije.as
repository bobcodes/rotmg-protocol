package biqacufo
{
   import flash.display.Sprite;
   import ruwysepyd.Junefolef;
   import movimet.Lufub;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.game.GameSprite;
   import tulunyno.Hugyqufyq;
   import flash.events.MouseEvent;
   import aaa.rotmg.config.UserConfig;
   import flash.filters.DropShadowFilter;
   import nec.Nara;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.assembleegameclient.util.Wagoq;


   public class Kofapije extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Kofapije(param1:GameSprite=null) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.rezybyha=new Hugyqufyq();
         super();
         this.zajav=param1;
         this.faji=this.honeg();
         jiguvovu.push(this.faji.textChanged);
         addChild(this.faji);
         var _loc2_:BitmapData = AssetLibrary.jeqycu(nuqewilyw,vuvahy);
         _loc2_=TextureRedrawer.redraw(_loc2_,40,true,0,0);
         this.wegodasav=new Bitmap(_loc2_);
         addChild(this.wegodasav);
         this.wytyca=this.honeg();
         jiguvovu.push(this.wytyca.textChanged);
         addChild(this.wytyca);
         this.zezapudy=new Bitmap(Wagoq.qem());
         addChild(this.zezapudy);
         this.draw(0,0);
         mouseEnabled=true;
         doubleClickEnabled=true;
         addEventListener(MouseEvent.DOUBLE_CLICK,this.suci,false,0,true);
         jiguvovu.complete.add(this.quhugyr);
         return;
      }

      private static const lacasoka:int = 18;

      public static const nuqewilyw:String = "lofiObj3";

      public static const vuvahy:int = 225;

      public static const jiguvovu:Junefolef = new Junefolef();

      private var faji:Lufub;

      private var wytyca:Lufub;

      private var wegodasav:Bitmap;

      private var zezapudy:Bitmap;

      private var credits_:int = -1;

      private var kotobi:int = -1;

      private var zajav:GameSprite;

      public var rezybyha:Hugyqufyq;

      private function quhugyr() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wegodasav.x=-this.wegodasav.width;
         this.faji.x=this.wegodasav.x-this.faji.width+8;
         this.faji.y=this.wegodasav.y+this.wegodasav.height/2-this.faji.height/2;
         this.zezapudy.x=this.faji.x-this.zezapudy.width;
         this.wytyca.x=this.zezapudy.x-this.wytyca.width+8;
         this.wytyca.y=this.zezapudy.y+this.zezapudy.height/2-this.wytyca.height/2;
         return;
      }

      private function suci(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.zajav||(this.zajav.evalIsNotInCombatMapArea())||UserConfig.data_.clickForGold==true)
         {
            this.rezybyha.dispatch();
         }
         return;
      }

      public function honeg() : Lufub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Lufub = new Lufub().setSize(lacasoka).setColor(16777215).setTextHeight(16);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         return _loc1_;
      }

      public function draw(param1:int, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1==this.credits_&&param2==this.kotobi)
         {
            return;
         }
         this.credits_=param1;
         this.kotobi=param2;
         this.faji.setStringBuilder(new Nara(this.credits_.toString()));
         this.wytyca.setStringBuilder(new Nara(this.kotobi.toString()));
         if(jiguvovu.isEmpty())
         {
            this.quhugyr();
         }
         return;
      }
   }

}