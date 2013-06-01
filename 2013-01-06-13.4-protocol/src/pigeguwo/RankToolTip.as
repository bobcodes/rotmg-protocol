package pigeguwo
{
[CLASS1084]   import pudev.Capitu;
   import com.company.rotmg.graphics.StarGraphic;
   import com.company.assembleegameclient.ui.Detys;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.util.Gugi;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.filters.DropShadowFilter;
   import tidi.Dak;


   public class RankToolTip extends Jazyv
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function RankToolTip(param1:int) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.gorudohy=new Detys(100,1842204);
         super(3552822,1,16777215,1);
         this.badaz=new Capitu().setSize(13).setColor(11776947).setBold(true);
         this.badaz.setVerticalAlign(Capitu.BOTTOM);
         this.badaz.setStringBuilder(new Zufi().setParams(Kefyfa.hyfykuj,{numStars:param1}));
         this.badaz.filters=[new DropShadowFilter(0,0,0)];
         this.badaz.x=gosi;
         addChild(this.badaz);
         this.hilalan=new Capitu().setSize(13).setColor(11776947);
         this.hilalan.setTextWidth(174);
         this.hilalan.setMultiLine(true).setWordWrap(true);
         this.hilalan.setStringBuilder(new Zufi().setParams(Kefyfa.foluga));
         this.hilalan.filters=[new DropShadowFilter(0,0,0)];
         this.hilalan.x=gosi;
         this.hilalan.y=30;
         addChild(this.hilalan);
         var _loc2_:Dak = new Dak().push(this.badaz.textChanged).push(this.hilalan.textChanged);
         _loc2_.complete.addOnce(this.nyfekag);
         return;
      }

      private static const gosi:int = 6;

      private var badaz:Capitu;

      private var star_:StarGraphic;

      private var hilalan:Capitu;

      private var gorudohy:Detys;

      private function nyfekag() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:LegendLine = null;
         this.badaz.y=this.badaz.height+2;
         this.star_=new StarGraphic();
         this.star_.transform.colorTransform=new ColorTransform(179/255,179/255,179/255);
         var _loc1_:Rectangle = this.badaz.getBounds(this);
         this.star_.x=_loc1_.right+7;
         this.star_.y=this.badaz.y-this.star_.height;
         addChild(this.star_);
         this.gorudohy.x=gosi;
         this.gorudohy.y=height+10;
         addChild(this.gorudohy);
         var _loc3_:int = this.gorudohy.y+4;
         var _loc4_:* = 0;
         while(_loc4_<Gugi.tiq.length)
         {
            _loc2_=new LegendLine(_loc4_*ObjectLibrary.vyhytu.length,(_loc4_+1)*ObjectLibrary.vyhytu.length-1,Gugi.tiq[_loc4_]);
            _loc2_.x=gosi;
            _loc2_.y=_loc3_;
            addChild(_loc2_);
            _loc3_=_loc3_+_loc2_.height;
            _loc4_++;
         }
         _loc2_=new LegendLine(Gugi.zicub(),Gugi.zicub(),new ColorTransform());
         _loc2_.x=gosi;
         _loc2_.y=_loc3_;
         addChild(_loc2_);
         this.draw();
         return;
      }

      override public function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gorudohy.romy(width-10,1842204);
         super.draw();
         return;
      }
   }
[/CLASS]
}[CLASS1085]   import flash.display.Sprite;
   import com.company.rotmg.graphics.StarGraphic;
   import pudev.Capitu;
   import flash.geom.ColorTransform;
   import totuhare.Javo;
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

      private var rangeText_:Capitu;

      private var star_:StarGraphic;

      public function addGreyStar() : void {
         this.star_=new StarGraphic();
         this.star_.transform.colorTransform=new ColorTransform(179/255,179/255,179/255);
         addChild(this.star_);
         return;
      }

      public function addRangeText(param1:int, param2:int) : void {
         this.rangeText_=new Capitu().setSize(13).setColor(11776947);
         this.rangeText_.setVerticalAlign(Capitu.BOTTOM);
         this.rangeText_.setStringBuilder(new Javo(": "+(param1==param2?param1.toString():param1+" - "+param2)));
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
[/CLASS]