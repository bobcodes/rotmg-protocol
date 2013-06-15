package pejycaj
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import hivysif.Liwyny;
   import flash.display.Bitmap;
   import __AS3__.vec.Vector;
   import waryp.Nulejufyl;
   import bivecenym.Vycem;
   import flash.events.MouseEvent;
   import wohy.Caki;
   import wohy.Meso;
   import wenono.Nuri;
   import wohy.Gebusecyz;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;
   import flash.filters.DropShadowFilter;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.text.TextFieldAutoSize;
   import hivysif.Guzowoja;
   import flash.display.Shape;
   import flash.display.Graphics;
   import com.company.rotmg.graphics.ScreenGraphic;


   public class ArenaLeaderboard extends Sprite
   {
      public function ArenaLeaderboard() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.list=this.hunekycu();
         this.title=this.haq();
         this.koco=this.qisyf(false);
         this.vazejuwam=this.qisyf(true);
         this.nidawybi=this.liv();
         this.nirybory=this.zadipaf();
         super();
         addChild(this.list);
         addChild(new ScreenGraphic());
         addChild(this.koco);
         addChild(this.vazejuwam);
         addChild(this.title);
         this.dozal();
         this.wucijahef();
         addChild(this.nirybory);
         return;
      }

      public const zajiqefe:Qanyduk = new Qanyduk(Meso);

      public const close:Qanyduk = new Qanyduk();

      private var list:Vyqyk;

      private var title:Liwyny;

      private var koco:Bitmap;

      private var vazejuwam:Bitmap;

      private var nidawybi:Vector.<Hyjofo>;

      private var selected:Hyjofo;

      private var gopubotag:Nulejufyl;

      private var nirybory:Vycem;

      public function init() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Hyjofo = this.nidawybi[0];
         this.selected=_loc1_;
         _loc1_.setSelected(true);
         _loc1_.selected.dispatch(_loc1_);
         return;
      }

      public function destroy() : void {
         var [OFS2]_loc4_:* = [/OFS]true;
         var [OFS4]_loc5_:* = [/OFS]false;
         var [OFS12]_loc1_:Hyjofo = [/OFS][OFS8]null[/OFS];
         for each (_loc1_ in this.[OFS17]nidawybi[/OFS])
         {
            [OFS34]_loc1_[/OFS].[OFS35]selected[/OFS].[OFS42]remove[/OFS][OFS42]([/OFS]this.[OFS39]tyhecete[/OFS][OFS42])[/OFS];
            [OFS45]_loc1_[/OFS].[OFS46]destroy[/OFS][OFS46]([/OFS][OFS46])[/OFS];
         }
         [OFS60]return[/OFS];
      }

      public function vywufa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.padijuby(this.selected.cycawyjaq().qute());
         return;
      }

      private function famij(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.close.dispatch();
         return;
      }

      private function tyhecete(param1:Hyjofo) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.selected.setSelected(false);
         this.selected=param1;
         this.selected.setSelected(true);
         this.nirybory.visible=param1.cycawyjaq().getKey()=="weekly";
         if(param1.cycawyjaq().danubebar())
         {
            this.list.setItems(param1.cycawyjaq().qute(),true);
         }
         else
         {
            this.zajiqefe.dispatch(param1.cycawyjaq());
         }
         return;
      }

      public function padijuby(param1:Vector.<Caki>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.list.setItems(param1,true);
         return;
      }

      private function liv() : Vector.<Hyjofo> {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:Meso = null;
         var _loc4_:Hyjofo = null;
         var _loc1_:Nuri = new Nuri();
         var _loc2_:Vector.<Hyjofo> = new Vector.<Hyjofo>();
         for each (_loc3_ in Gebusecyz.gifeq)
         {
            _loc4_=new Hyjofo(_loc3_);
            _loc4_.y=70;
            _loc4_.selected.add(this.tyhecete);
            _loc2_.push(_loc4_);
            _loc1_.push(_loc4_.harap);
            addChild(_loc4_);
         }
         _loc1_.complete.addOnce(this.vyly);
         return _loc2_;
      }

      private function qisyf(param1:Boolean) : Bitmap {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:BitmapData = TextureRedrawer.redraw(AssetLibrary.tem("lofiInterface2",8),64,true,0,0,true);
         if(param1)
         {
            _loc2_=BitmapUtil.mirror(_loc2_);
         }
         return new Bitmap(_loc2_);
      }

      private function haq() : Liwyny {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Liwyny = null;
         _loc1_=new Liwyny();
         _loc1_.setBold(true).setColor(11776947).setSize(32);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         _loc1_.setStringBuilder(new Kybidu().setParams(Vibemod.kenus));
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER);
         _loc1_.y=25;
         _loc1_.textChanged.addOnce(this.cowuroheh);
         return _loc1_;
      }

      private function dozal() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gopubotag=new Nulejufyl(Vibemod.bucuw,36,false);
         this.gopubotag.setAutoSize(TextFieldAutoSize.CENTER);
         this.gopubotag.setVerticalAlign(Guzowoja.MIDDLE);
         this.gopubotag.x=400;
         this.gopubotag.y=553;
         addChild(this.gopubotag);
         this.gopubotag.addEventListener(MouseEvent.CLICK,this.famij);
         return;
      }

      private function wucijahef() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Shape = new Shape();
         addChild(_loc1_);
         var _loc2_:Graphics = _loc1_.graphics;
         _loc2_.lineStyle(2,5526612);
         _loc2_.moveTo(0,100);
         _loc2_.lineTo(800,100);
         return;
      }

      private function hunekycu() : Vyqyk {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Vyqyk = new Vyqyk();
         _loc1_.x=15;
         _loc1_.y=115;
         return _loc1_;
      }

      private function vyly() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Hyjofo = null;
         var _loc1_:* = 20;
         for each (_loc2_ in this.nidawybi)
         {
            _loc2_.x=_loc1_;
            _loc1_=_loc1_+(_loc2_.width+20);
         }
         return;
      }

      private function zadipaf() : Vycem {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Vycem = null;
         _loc1_=new Vycem();
         _loc1_.y=72;
         _loc1_.x=440;
         return _loc1_;
      }

      private function cowuroheh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.title.x=stage.stageWidth/2;
         this.koco.x=stage.stageWidth/2-this.title.width/2-this.koco.width+10;
         this.koco.y=15;
         this.vazejuwam.x=stage.stageWidth/2+this.title.width/2-10;
         this.vazejuwam.y=15;
         return;
      }
   }

}