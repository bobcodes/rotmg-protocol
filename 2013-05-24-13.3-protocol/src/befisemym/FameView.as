package befisemym
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import flash.display.DisplayObjectContainer;
   import flash.display.Bitmap;
   import movimet.Lufub;
   import sakugyt.Cafaram;
   import sakugyt.Kosykys;
   import sakugyt.Tiqigawul;
   import flash.display.BitmapData;
   import dilywopavy.GTween;
   import vozireni.Pozunubu;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import com.company.rotmg.graphics.FameIconBackgroundDesign;
   import flash.geom.Rectangle;
   import com.company.assembleegameclient.util.Wagoq;
   import com.company.util.BitmapUtil;
   import com.company.rotmg.graphics.ScreenGraphic;
   import vahejo.Tetywybil;
   import gyzesuqu.Zojygese;
   import flash.events.MouseEvent;


   public class FameView extends Sprite
   {
      public function FameView() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         addChild(new Tetywybil());
         addChild(this.tameto=new Sprite());
         addChild(this.fukepyw=new Bitmap());
         this.zasafily=new Tiqigawul(I18nKeys.qegejubol,36,false);
         this.zasafily.setAutoSize(TextFieldAutoSize.CENTER);
         this.zasafily.setVerticalAlign(Lufub.MIDDLE);
         this.closed=new Zojygese(this.zasafily,MouseEvent.CLICK);
         return;
      }

      public var closed:Hugyqufyq;

      private var tameto:DisplayObjectContainer;

      private var fukepyw:Bitmap;

      private var title:Lufub;

      private var date:Lufub;

      private var cyfiga:Cafaram;

      private var nuha:Kosykys;

      private var zasafily:Tiqigawul;

      private var vupative:Boolean;

      private var quvizynis:Boolean;

      private var disigu:Boolean;

      public function zitonihim(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vupative=param1;
         return;
      }

      public function zubeg(param1:BitmapData) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.fukepyw.bitmapData=param1;
         var _loc2_:GTween = new GTween(this.fukepyw,2,{alpha:0});
         _loc2_.onComplete=this.wykysoju;
         Pozunubu.play("death_screen");
         return;
      }

      public function qubyc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fukepyw.bitmapData=null;
         return;
      }

      private function wykysoju(param1:GTween) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeChild(this.fukepyw);
         this.quvizynis=true;
         if(this.disigu)
         {
            this.huvesyl();
         }
         return;
      }

      public function lykej(param1:String, param2:int, param3:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.title=new Lufub().setSize(38).setColor(13421772);
         this.title.setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.title.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         var _loc4_:String = ObjectLibrary.fajocyd[param3];
         this.title.setStringBuilder(new Sire().setParams(I18nKeys.qygil,
            {
               name:param1,
               level:param2,
               type:_loc4_
            }
         ));
         this.title.x=stage.stageWidth/2;
         this.title.y=225;
         this.tameto.addChild(this.title);
         return;
      }

      public function buvama(param1:String, param2:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.date=new Lufub().setSize(24).setColor(13421772);
         this.date.setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.date.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         var _loc3_:Sire = new Sire();
         if(param2)
         {
            _loc3_.setParams(I18nKeys.qorupyke,
               {
                  date:param1,
                  killer:param2
               }
            );
         }
         else
         {
            _loc3_.setParams(I18nKeys.jytoli,{date:this.date});
         }
         this.date.setStringBuilder(_loc3_);
         this.date.x=stage.stageWidth/2;
         this.date.y=272;
         this.tameto.addChild(this.date);
         return;
      }

      public function setIcon(param1:BitmapData) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Sprite = null;
         _loc2_=new Sprite();
         var _loc3_:Sprite = new FameIconBackgroundDesign();
         _loc3_.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         _loc2_.addChild(_loc3_);
         var _loc4_:Bitmap = new Bitmap(param1);
         _loc4_.x=_loc2_.width/2-_loc4_.width/2;
         _loc4_.y=_loc2_.height/2-_loc4_.height/2;
         _loc2_.addChild(_loc4_);
         _loc2_.y=20;
         _loc2_.x=stage.stageWidth/2-_loc2_.width/2;
         this.tameto.addChild(_loc2_);
         return;
      }

      public function renyl(param1:int, param2:XML) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.cyfiga=new Cafaram(new Rectangle(0,0,784,150),param2);
         this.cyfiga.x=8;
         this.cyfiga.y=316;
         addChild(this.cyfiga);
         this.tameto.addChild(this.cyfiga);
         var _loc3_:BitmapData = Wagoq.qem();
         _loc3_=BitmapUtil.wygoci(_loc3_,6,6,_loc3_.width-12,_loc3_.height-12);
         this.nuha=new Kosykys(24,13421772,16762880,I18nKeys.bekeky,null,0,param1,"","",new Bitmap(_loc3_));
         this.nuha.x=10;
         this.nuha.y=470;
         this.tameto.addChild(this.nuha);
         this.disigu=true;
         if(!this.vupative||(this.quvizynis))
         {
            this.huvesyl();
         }
         return;
      }

      private function huvesyl() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tameto.addChild(new ScreenGraphic());
         this.zasafily.x=stage.stageWidth/2;
         this.zasafily.y=550;
         this.tameto.addChild(this.zasafily);
         if(this.vupative)
         {
            this.cyfiga.qugeby();
         }
         else
         {
            this.cyfiga.pege();
         }
         return;
      }
   }
}