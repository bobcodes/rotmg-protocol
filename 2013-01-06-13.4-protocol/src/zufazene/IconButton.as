package zufazene
{
[CLASS1061]   import flash.display.Sprite;
   import viky.Wihury;
   import flash.geom.ColorTransform;
   import viky.Hoselyfov;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import pigeguwo.Mefu;
   import com.company.util.MoreColorUtil;
   import flash.events.MouseEvent;
   import com.company.util.Sojef;
   import aaa.Parameters;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import dutes.Zevazogo;
   import dutes.Soz;
   import com.company.assembleegameclient.util.TextureRedrawer;


   public class IconButton extends Sprite implements Wihury
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function IconButton(param1:BitmapData, param2:String, param3:String) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.tuhucysys=new Hoselyfov();
         super();
         this.dukape=param1;
         this.kaninifiz=TextureRedrawer.redraw(this.dukape,320/this.dukape.width,true,0,0);
         this.mad=new Bitmap(this.kaninifiz);
         this.mad.x=-12;
         this.mad.y=-12;
         addChild(this.mad);
         this.wavobe=param3;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this.jubameliq(param2);
         this.tuhucysys.mosajo(this);
         this.tuhucysys.tooltip=this.toolTip_;
         return;
      }

      protected static const nyjo:ColorTransform = new ColorTransform(1,220/255,133/255);

      public var tuhucysys:Hoselyfov;

      protected var dukape:BitmapData;

      protected var kaninifiz:BitmapData;

      protected var mad:Bitmap;

      protected var wavobe:String;

      protected var his:ColorTransform = null;

      private var toolTip_:Mefu = null;

      private function jubameliq(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1!="")
         {
            this.toolTip_=new Mefu(3552822,10197915,param1,"",200);
         }
         return;
      }

      public function tofijeni(param1:ColorTransform) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==this.his)
         {
            return;
         }
         this.his=param1;
         if(this.his==null)
         {
            transform.colorTransform=MoreColorUtil.identity;
         }
         else
         {
            transform.colorTransform=this.his;
         }
         return;
      }

      protected function onMouseOver(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = null;
         this.tofijeni(nyjo);
         if(this.toolTip_!=null)
         {
            _loc2_=Sojef.hekypido[Parameters.data_[this.wavobe]];
            this.toolTip_.rike(new Zufi().setParams(Kefyfa.gejik,{hotkey:_loc2_}));
         }
         return;
      }

      protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tofijeni(null);
         return;
      }

      public function suta(param1:Zevazogo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tuhucysys.suta(param1);
         return;
      }

      public function gorycici() : Zevazogo {
         return this.tuhucysys.gorycici();
      }

      public function myt(param1:Soz) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tuhucysys.myt(param1);
         return;
      }

      public function kodyqigiv() : Soz {
         return this.tuhucysys.kodyqigiv();
      }
   }
[/CLASS]
}