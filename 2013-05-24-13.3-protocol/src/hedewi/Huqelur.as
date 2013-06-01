package hedewi
{
   import flash.filters.ColorMatrixFilter;
   import com.company.util.MoreColorUtil;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;
   import pirus.Vimaz;
   import com.company.assembleegameclient.objects.Player;
   import suko.Rerapipy;


   public class Huqelur extends Moho
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Huqelur(param1:int, param2:Rerapipy, param3:Boolean) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1,param2,param3);
         return;
      }

      private static const rotyb:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.rug(3552822));

      public var jyfo:Bitmap;

      public var itemType:int;

      private var vezafare:int;

      override public function canHoldItem(param1:int) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1<=0||this.itemType==ObjectLibrary.bohe(param1);
      }

      public function setType(param1:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:BitmapData = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         switch(param1)
         {
            case Vimaz.nuzyf:
               break;
            case Vimaz.bygevopij:
               _loc2_=AssetLibrary.jeqycu("lofiObj5",48);
               break;
            case Vimaz.cipyke:
               _loc2_=AssetLibrary.jeqycu("lofiObj5",96);
               break;
            case Vimaz.roget:
               _loc2_=AssetLibrary.jeqycu("lofiObj5",80);
               break;
            case Vimaz.decadefah:
               _loc2_=AssetLibrary.jeqycu("lofiObj6",80);
               break;
            case Vimaz.gipisonyl:
               _loc2_=AssetLibrary.jeqycu("lofiObj6",112);
               break;
            case Vimaz.ponuv:
               _loc2_=AssetLibrary.jeqycu("lofiObj5",0);
               break;
            case Vimaz.sareke:
               _loc2_=AssetLibrary.jeqycu("lofiObj5",32);
               break;
            case Vimaz.qudebuly:
               _loc2_=AssetLibrary.jeqycu("lofiObj5",64);
               break;
            case Vimaz.wyqofe:
               _loc2_=AssetLibrary.jeqycu("lofiObj",44);
               break;
            case Vimaz.colalaw:
               _loc2_=AssetLibrary.jeqycu("lofiObj6",64);
               break;
            case Vimaz.jofew:
               _loc2_=AssetLibrary.jeqycu("lofiObj6",160);
               break;
            case Vimaz.mologud:
               _loc2_=AssetLibrary.jeqycu("lofiObj6",32);
               break;
            case Vimaz.varyrivi:
               _loc2_=AssetLibrary.jeqycu("lofiObj5",16);
               break;
            case Vimaz.jahapyqud:
               _loc2_=AssetLibrary.jeqycu("lofiObj6",48);
               break;
            case Vimaz.virega:
               _loc2_=AssetLibrary.jeqycu("lofiObj6",96);
               break;
            case Vimaz.habepejo:
               _loc2_=AssetLibrary.jeqycu("lofiObj5",112);
               break;
            case Vimaz.pebudilub:
               _loc2_=AssetLibrary.jeqycu("lofiObj6",128);
               break;
            case Vimaz.cowad:
               _loc2_=AssetLibrary.jeqycu("lofiObj6",0);
               break;
            case Vimaz.gyronahi:
               _loc2_=AssetLibrary.jeqycu("lofiObj6",16);
               break;
            case Vimaz.raneniwe:
               _loc2_=AssetLibrary.jeqycu("lofiObj6",144);
               break;
            case Vimaz.tidybiqi:
               _loc2_=AssetLibrary.jeqycu("lofiObj6",176);
               break;
            case Vimaz.feloj:
               _loc2_=AssetLibrary.jeqycu("lofiObj6",192);
               break;
            case Vimaz.vagaf:
               _loc2_=AssetLibrary.jeqycu("lofiObj3",540);
               break;
            case Vimaz.jabuvaf:
               _loc2_=AssetLibrary.jeqycu("lofiObj3",555);
               break;
         }
         if(_loc2_!=null)
         {
            this.jyfo=new Bitmap(_loc2_);
            this.jyfo.x=BORDER;
            this.jyfo.y=BORDER;
            this.jyfo.scaleX=4;
            this.jyfo.scaleY=4;
            this.jyfo.filters=[rotyb];
            addChildAt(this.jyfo,0);
         }
         this.itemType=param1;
         return;
      }

      override public function setItem(param1:int) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Boolean = super.setItem(param1);
         if(_loc2_)
         {
            this.jyfo.visible=cyjop.itemId<=0;
            this.ted();
         }
         return _loc2_;
      }

      private function ted() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:XML = null;
         this.vezafare=0;
         if(cyjop.itemId>0)
         {
            _loc1_=ObjectLibrary.tem[cyjop.itemId];
            if((_loc1_)&&(_loc1_.hasOwnProperty("Usable")))
            {
               if(_loc1_.hasOwnProperty("MultiPhase"))
               {
                  this.vezafare=_loc1_.MpEndCost;
               }
               else
               {
                  this.vezafare=_loc1_.MpCost;
               }
            }
         }
         return;
      }

      public function updateDim(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         cyjop.setDim((param1)&&param1.zamonoca<this.vezafare);
         return;
      }

      override protected function beginDragCallback() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jyfo.visible=true;
         return;
      }

      override protected function endDragCallback() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jyfo.visible=cyjop.itemId<=0;
         return;
      }

      override protected function getBackgroundColor() : int {
         return 4539717;
      }
   }

}