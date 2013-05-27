package povopito
{
   import movimet.Lufub;
   import com.company.rotmg.graphics.StarGraphic;
   import com.company.assembleegameclient.ui.Luvu;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.util.Wagoq;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.filters.DropShadowFilter;
   import ruwysepyd.Junefolef;


   public class RankToolTip extends Ryduwi
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function RankToolTip(param1:int) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.kity=new Luvu(100,1842204);
         super(3552822,1,16777215,1);
         this.cyfuki=new Lufub().setSize(13).setColor(11776947).setBold(true);
         this.cyfuki.setVerticalAlign(Lufub.BOTTOM);
         this.cyfuki.setStringBuilder(new Sire().setParams(I18nKeys.zyj,{numStars:param1}));
         this.cyfuki.filters=[new DropShadowFilter(0,0,0)];
         this.cyfuki.x=cim;
         addChild(this.cyfuki);
         this.goj=new Lufub().setSize(13).setColor(11776947);
         this.goj.setTextWidth(174);
         this.goj.setMultiLine(true).setWordWrap(true);
         this.goj.setStringBuilder(new Sire().setParams(I18nKeys.zezyvec));
         this.goj.filters=[new DropShadowFilter(0,0,0)];
         this.goj.x=cim;
         this.goj.y=30;
         addChild(this.goj);
         var _loc2_:Junefolef = new Junefolef().push(this.cyfuki.textChanged).push(this.goj.textChanged);
         _loc2_.complete.addOnce(this.kopetol);
         return;
      }

      private static const cim:int = 6;

      private var cyfuki:Lufub;

      private var star_:StarGraphic;

      private var goj:Lufub;

      private var kity:Luvu;

      private function kopetol() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:LegendLine = null;
         this.cyfuki.y=this.cyfuki.height+2;
         this.star_=new StarGraphic();
         this.star_.transform.colorTransform=new ColorTransform(179/255,179/255,179/255);
         var _loc1_:Rectangle = this.cyfuki.getBounds(this);
         this.star_.x=_loc1_.right+7;
         this.star_.y=this.cyfuki.y-this.star_.height;
         addChild(this.star_);
         this.kity.x=cim;
         this.kity.y=height+10;
         addChild(this.kity);
         var _loc3_:int = this.kity.y+4;
         var _loc4_:* = 0;
         while(_loc4_<Wagoq.zydi.length)
         {
            _loc2_=new LegendLine(_loc4_*ObjectLibrary.supy.length,(_loc4_+1)*ObjectLibrary.supy.length-1,Wagoq.zydi[_loc4_]);
            _loc2_.x=cim;
            _loc2_.y=_loc3_;
            addChild(_loc2_);
            _loc3_=_loc3_+_loc2_.height;
            _loc4_++;
         }
         _loc2_=new LegendLine(Wagoq.topowac(),Wagoq.topowac(),new ColorTransform());
         _loc2_.x=cim;
         _loc2_.y=_loc3_;
         addChild(_loc2_);
         this.draw();
         return;
      }

      override public function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kity.jum(width-10,1842204);
         super.draw();
         return;
      }
   }

}   import flash.display.Sprite;
   import com.company.rotmg.graphics.StarGraphic;
   import movimet.Lufub;
   import flash.geom.ColorTransform;
   import nec.Nara;
   import flash.filters.DropShadowFilter;


   class LegendLine extends Sprite
   {
      function LegendLine(param1:int, param2:int, param3:ColorTransform) {
         super();
         this.addColoredStar(param3);
         this.addRangeText(param1,param2);
         this.addGreyStar();
         return;
      }

      private var coloredStar_:StarGraphic;

      private var rangeText_:Lufub;

      private var star_:StarGraphic;

      public function addGreyStar() : void {
         this.star_=new StarGraphic();
         this.star_.transform.colorTransform=new ColorTransform(179/255,179/255,179/255);
         addChild(this.star_);
         return;
      }

      public function addRangeText(param1:int, param2:int) : void {
         this.rangeText_=new Lufub().setSize(13).setColor(11776947);
         this.rangeText_.setVerticalAlign(Lufub.BOTTOM);
         this.rangeText_.setStringBuilder(new Nara(": "+(param1==param2?param1.toString():param1+" - "+param2)));
         this.rangeText_.setBold(true);
         filters=[new DropShadowFilter(0,0,0)];
         this.rangeText_.x=this.coloredStar_.width;
         this.rangeText_.y=this.coloredStar_.getBounds(this).bottom;
         this.rangeText_.textChanged.addOnce(this.positionGreyStar);
         addChild(this.rangeText_);
         return;
      }

      public function addColoredStar(param1:ColorTransform) : void {
         this.coloredStar_=new StarGraphic();
         this.coloredStar_.transform.colorTransform=param1;
         this.coloredStar_.y=4;
         addChild(this.coloredStar_);
         return;
      }

      private function positionGreyStar() : void {
         this.star_.x=this.rangeText_.getBounds(this).right+2;
         this.star_.y=4;
         return;
      }
   }
