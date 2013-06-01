package rucedosu
{
[CLASS542]   import flash.display.Sprite;
   import tidi.Dak;
   import pudev.Capitu;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.game.GameSprite;
   import tinava.Dab;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.parameters.Parameters;
   import flash.filters.DropShadowFilter;
   import totuhare.Javo;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.assembleegameclient.util.Gugi;


   public class Vekowuris extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Vekowuris(param1:GameSprite=null) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.wuripityp=new Dab();
         super();
         this.kefatu=param1;
         this.dejod=this.cyholule();
         juwocez.push(this.dejod.textChanged);
         addChild(this.dejod);
         var _loc2_:BitmapData = AssetLibrary.zovy(nyc,kutuha);
         _loc2_=TextureRedrawer.redraw(_loc2_,40,true,0,0);
         this.bawerirac=new Bitmap(_loc2_);
         addChild(this.bawerirac);
         this.nicuk=this.cyholule();
         juwocez.push(this.nicuk.textChanged);
         addChild(this.nicuk);
         this.sunyda=new Bitmap(Gugi.sywidufa());
         addChild(this.sunyda);
         this.draw(0,0);
         mouseEnabled=true;
         doubleClickEnabled=true;
         addEventListener(MouseEvent.DOUBLE_CLICK,this.wiryziga,false,0,true);
         juwocez.complete.add(this.qomyzuwyw);
         return;
      }

      private static const heh:int = 18;

      public static const nyc:String = "lofiObj3";

      public static const kutuha:int = 225;

      public static const juwocez:Dak = new Dak();

      private var dejod:Capitu;

      private var nicuk:Capitu;

      private var bawerirac:Bitmap;

      private var sunyda:Bitmap;

      private var credits_:int = -1;

      private var waz:int = -1;

      private var kefatu:GameSprite;

      public var wuripityp:Dab;

      private function qomyzuwyw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bawerirac.x=-this.bawerirac.width;
         this.dejod.x=this.bawerirac.x-this.dejod.width+8;
         this.dejod.y=this.bawerirac.y+this.bawerirac.height/2-this.dejod.height/2;
         this.sunyda.x=this.dejod.x-this.sunyda.width;
         this.nicuk.x=this.sunyda.x-this.nicuk.width+8;
         this.nicuk.y=this.sunyda.y+this.sunyda.height/2-this.nicuk.height/2;
         return;
      }

      private function wiryziga(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.kefatu||(this.kefatu.evalIsNotInCombatMapArea())||Parameters.data_.clickForGold==true)
         {
            this.wuripityp.dispatch();
         }
         return;
      }

      public function cyholule() : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Capitu = new Capitu().setSize(heh).setColor(16777215).setTextHeight(16);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         return _loc1_;
      }

      public function draw(param1:int, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1==this.credits_&&param2==this.waz)
         {
            return;
         }
         this.credits_=param1;
         this.waz=param2;
         this.dejod.setStringBuilder(new Javo(this.credits_.toString()));
         this.nicuk.setStringBuilder(new Javo(this.waz.toString()));
         if(juwocez.isEmpty())
         {
            this.qomyzuwyw();
         }
         return;
      }
   }
[/CLASS]
}