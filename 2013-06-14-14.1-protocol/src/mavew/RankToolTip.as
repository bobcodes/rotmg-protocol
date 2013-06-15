package mavew
{
   import hivysif.Guzowoja;
   import com.company.rotmg.graphics.StarGraphic;
   import com.company.assembleegameclient.ui.Gymajyzu;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.util.Cinihel;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;
   import wenono.Nuri;


   public class RankToolTip extends Qyryl
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function RankToolTip(param1:int) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.kojopy=new Gymajyzu(100,1842204);
         super(3552822,1,16777215,1);
         this.ciguduzyp=new Guzowoja().setSize(13).setColor(11776947).setBold(true);
         this.ciguduzyp.setVerticalAlign(Guzowoja.BOTTOM);
         this.ciguduzyp.setStringBuilder(new Kybidu().setParams(Vibemod.zope,{numStars:param1}));
         this.ciguduzyp.filters=[new DropShadowFilter(0,0,0)];
         this.ciguduzyp.x=womiw;
         addChild(this.ciguduzyp);
         this.henugaho=new Guzowoja().setSize(13).setColor(11776947);
         this.henugaho.setTextWidth(174);
         this.henugaho.setMultiLine(true).setWordWrap(true);
         this.henugaho.setStringBuilder(new Kybidu().setParams(Vibemod.vebasiryl));
         this.henugaho.filters=[new DropShadowFilter(0,0,0)];
         this.henugaho.x=womiw;
         this.henugaho.y=30;
         addChild(this.henugaho);
         var _loc2_:Nuri = new Nuri().push(this.ciguduzyp.textChanged).push(this.henugaho.textChanged);
         _loc2_.complete.addOnce(this.hakije);
         return;
      }

      private static const womiw:int = 6;

      private var ciguduzyp:Guzowoja;

      private var star_:StarGraphic;

      private var henugaho:Guzowoja;

      private var kojopy:Gymajyzu;

      private function hakije() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:LegendLine = null;
         this.ciguduzyp.y=this.ciguduzyp.height+2;
         this.star_=new StarGraphic();
         this.star_.transform.colorTransform=new ColorTransform(179/255,179/255,179/255);
         var _loc1_:Rectangle = this.ciguduzyp.getBounds(this);
         this.star_.x=_loc1_.right+7;
         this.star_.y=this.ciguduzyp.y-this.star_.height;
         addChild(this.star_);
         this.kojopy.x=womiw;
         this.kojopy.y=height+10;
         addChild(this.kojopy);
         var _loc3_:int = this.kojopy.y+4;
         var _loc4_:* = 0;
         while(_loc4_<Cinihel.mygo.length)
         {
            _loc2_=new LegendLine(_loc4_*ObjectLibrary.vemociged.length,(_loc4_+1)*ObjectLibrary.vemociged.length-1,Cinihel.mygo[_loc4_]);
            _loc2_.x=womiw;
            _loc2_.y=_loc3_;
            addChild(_loc2_);
            _loc3_=_loc3_+_loc2_.height;
            _loc4_++;
         }
         _loc2_=new LegendLine(Cinihel.pibyj(),Cinihel.pibyj(),new ColorTransform());
         _loc2_.x=womiw;
         _loc2_.y=_loc3_;
         addChild(_loc2_);
         this.draw();
         return;
      }

      override public function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kojopy.hecymov(width-10,1842204);
         super.draw();
         return;
      }
   }

}   import flash.display.Sprite;
   import com.company.rotmg.graphics.StarGraphic;
   import hivysif.Guzowoja;
   import flash.geom.ColorTransform;
   import jediwip.Vofezuzy;
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

      private var rangeText_:Guzowoja;

      private var star_:StarGraphic;

      public function addGreyStar() : void {
         this.star_=new StarGraphic();
         this.star_.transform.colorTransform=new ColorTransform(179/255,179/255,179/255);
         addChild(this.star_);
         return;
      }

      public function addRangeText(param1:int, param2:int) : void {
         this.rangeText_=new Guzowoja().setSize(13).setColor(11776947);
         this.rangeText_.setVerticalAlign(Guzowoja.BOTTOM);
         this.rangeText_.setStringBuilder(new Vofezuzy(": "+(param1==param2?param1.toString():param1+" - "+param2)));
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
