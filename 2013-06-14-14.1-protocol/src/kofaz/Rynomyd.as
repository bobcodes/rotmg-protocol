package kofaz
{
   import flash.display.Sprite;
   import wenono.Nuri;
   import hivysif.Guzowoja;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.game.GameSprite;
   import mukyrosu.Qanyduk;
   import flash.events.MouseEvent;
   import aaa.RotmgParameters.RotmgParameters;
   import flash.filters.DropShadowFilter;
   import jediwip.Vofezuzy;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.assembleegameclient.util.Cinihel;


   public class Rynomyd extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Rynomyd(param1:GameSprite=null) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.cunif=new Qanyduk();
         super();
         this.jodori=param1;
         this.tilekomic=this.kyjozysac();
         ryfoc.push(this.tilekomic.textChanged);
         addChild(this.tilekomic);
         var _loc2_:BitmapData = AssetLibrary.tem(fyruke,fyse);
         _loc2_=TextureRedrawer.redraw(_loc2_,40,true,0,0);
         this.cepafid=new Bitmap(_loc2_);
         addChild(this.cepafid);
         this.fewaq=this.kyjozysac();
         ryfoc.push(this.fewaq.textChanged);
         addChild(this.fewaq);
         this.tohipugup=new Bitmap(Cinihel.cinuwylo());
         addChild(this.tohipugup);
         this.draw(0,0);
         mouseEnabled=true;
         doubleClickEnabled=true;
         addEventListener(MouseEvent.DOUBLE_CLICK,this.ActionMapperAbstractahuk,false,0,true);
         ryfoc.complete.add(this.nipawuf);
         return;
      }

      private static const voquhubi:int = 18;

      public static const fyruke:String = "lofiObj3";

      public static const fyse:int = 225;

      public static const ryfoc:Nuri = new Nuri();

      private var tilekomic:Guzowoja;

      private var fewaq:Guzowoja;

      private var cepafid:Bitmap;

      private var tohipugup:Bitmap;

      private var credits_:int = -1;

      private var qyp:int = -1;

      private var jodori:GameSprite;

      public var cunif:Qanyduk;

      private function nipawuf() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cepafid.x=-this.cepafid.width;
         this.tilekomic.x=this.cepafid.x-this.tilekomic.width+8;
         this.tilekomic.y=this.cepafid.y+this.cepafid.height/2-this.tilekomic.height/2;
         this.tohipugup.x=this.tilekomic.x-this.tohipugup.width;
         this.fewaq.x=this.tohipugup.x-this.fewaq.width+8;
         this.fewaq.y=this.tohipugup.y+this.tohipugup.height/2-this.fewaq.height/2;
         return;
      }

      private function ActionMapperAbstractahuk(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.jodori||(this.jodori.evalIsNotInCombatMapArea())||RotmgParameters.data_.clickForGold==true)
         {
            this.cunif.dispatch();
         }
         return;
      }

      public function kyjozysac() : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Guzowoja = new Guzowoja().setSize(voquhubi).setColor(16777215).setTextHeight(16);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         return _loc1_;
      }

      public function draw(param1:int, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1==this.credits_&&param2==this.qyp)
         {
            return;
         }
         this.credits_=param1;
         this.qyp=param2;
         this.tilekomic.setStringBuilder(new Vofezuzy(this.credits_.toString()));
         this.fewaq.setStringBuilder(new Vofezuzy(this.qyp.toString()));
         if(ryfoc.isEmpty())
         {
            this.nipawuf();
         }
         return;
      }
   }

}