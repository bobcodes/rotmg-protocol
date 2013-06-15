package com.company.assembleegameclient.util
{
   import __AS3__.vec.Vector;
   import flash.utils.Dictionary;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import com.company.assembleegameclient.map.Qawosiwi;
   import com.company.util.Trig;


   public class Jiqefatok extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Jiqefatok(param1:Kebinuhi, param2:int, param3:int, param4:int) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         this.wediku=new Dictionary();
         super();
         this.bucuvena=param1;
         this.width_=param2;
         this.height_=param3;
         this.fyru=param4;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Zijuq = new Zijuq();
         _loc6_.wojunofyv(param1,param2,param3);
         if(param4==RIGHT)
         {
            this.wediku[RIGHT]=this.bidy(0,false,false,_loc6_);
            this.wediku[LEFT]=this.bidy(0,true,false,_loc6_);
            if(_loc6_.gisydi.length>=14)
            {
               this.wediku[DOWN]=this.bidy(7,false,true,_loc6_);
               if(_loc6_.gisydi.length>=21)
               {
                  this.wediku[UP]=this.bidy(14,false,true,_loc6_);
               }
            }
         }
         else
         {
            if(param4==DOWN)
            {
               this.wediku[DOWN]=this.bidy(0,false,true,_loc6_);
               if(_loc6_.gisydi.length>=14)
               {
                  this.wediku[RIGHT]=this.bidy(7,false,false,_loc6_);
                  this.wediku[LEFT]=this.bidy(7,true,false,_loc6_);
                  if(_loc6_.gisydi.length>=21)
                  {
                     this.wediku[UP]=this.bidy(14,false,true,_loc6_);
                  }
               }
            }
         }
         return;
      }

      public static const RIGHT:int = 0;

      public static const LEFT:int = 1;

      public static const DOWN:int = 2;

      public static const UP:int = 3;

      public static const cegut:int = 4;

      public static const radev:int = 0;

      public static const dywala:int = 1;

      public static const fomosypy:int = 2;

      public static const dylekara:int = 3;

      private static const vujoqyfe:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(8);

      private static const julefuwig:Number = Math.PI/4;

      public var bucuvena:Kebinuhi;

      private var width_:int;

      private var height_:int;

      private var fyru:int;

      private var wediku:Dictionary;

      public function kizeke() : BitmapData {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:BitmapData = new BitmapData(this.width_*7,this.height_,true,0);
         var _loc2_:Dictionary = this.wediku[this.fyru];
         var _loc3_:Vector.<Kebinuhi> = _loc2_[radev];
         if(_loc3_.length>0)
         {
            _loc1_.copyPixels(_loc3_[0].image_,_loc3_[0].image_.rect,new Point(0,0));
         }
         _loc3_=_loc2_[dywala];
         if(_loc3_.length>0)
         {
            _loc1_.copyPixels(_loc3_[0].image_,_loc3_[0].image_.rect,new Point(this.width_,0));
         }
         if(_loc3_.length>1)
         {
            _loc1_.copyPixels(_loc3_[1].image_,_loc3_[1].image_.rect,new Point(this.width_*2,0));
         }
         _loc3_=_loc2_[fomosypy];
         if(_loc3_.length>0)
         {
            _loc1_.copyPixels(_loc3_[0].image_,_loc3_[0].image_.rect,new Point(this.width_*4,0));
         }
         if(_loc3_.length>1)
         {
            _loc1_.copyPixels(_loc3_[1].image_,new Rectangle(this.width_,0,this.width_*2,this.height_),new Point(this.width_*5,0));
         }
         return _loc1_;
      }

      public function bilawaraf(param1:int, param2:int) : Vector.<Kebinuhi> {
         return this.wediku[param1][param2];
      }

      public function imageFromDir(param1:int, param2:int, param3:Number) : Kebinuhi {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:Vector.<Kebinuhi> = this.wediku[param1][param2];
         var param3:Number = Math.max(0,Math.min(0.99999,param3));
         var _loc5_:int = param3*_loc4_.length;
         return _loc4_[_loc5_];
      }

      public function imageFromAngle(param1:Number, param2:int, param3:Number) : Kebinuhi {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc4_:int = int(param1/julefuwig+4)%8;
         var _loc5_:Vector.<int> = vujoqyfe[_loc4_];
         var _loc6_:Dictionary = this.wediku[_loc5_[0]];
         if(_loc6_==null)
         {
            _loc6_=this.wediku[_loc5_[1]];
            if(_loc6_==null)
            {
               _loc6_=this.wediku[_loc5_[2]];
            }
         }
         var _loc7_:Vector.<Kebinuhi> = _loc6_[param2];
         var param3:Number = Math.max(0,Math.min(0.99999,param3));
         var _loc8_:int = param3*_loc7_.length;
         return _loc7_[_loc8_];
      }

      public function imageFromFacing(param1:Number, param2:Qawosiwi, param3:int, param4:Number) : Kebinuhi {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc5_:Number = Trig.kuqyroqub(param1-param2.angleRad_);
         var _loc6_:int = int(_loc5_/julefuwig+4)%8;
         var _loc7_:Vector.<int> = vujoqyfe[_loc6_];
         var _loc8_:Dictionary = this.wediku[_loc7_[0]];
         if(_loc8_==null)
         {
            _loc8_=this.wediku[_loc7_[1]];
            if(_loc8_==null)
            {
               _loc8_=this.wediku[_loc7_[2]];
            }
         }
         var _loc9_:Vector.<Kebinuhi> = _loc8_[param3];
         var param4:Number = Math.max(0,Math.min(0.99999,param4));
         var _loc10_:int = param4*_loc9_.length;
         return _loc9_[_loc10_];
      }

      private function bidy(param1:int, param2:Boolean, param3:Boolean, param4:Zijuq) : Dictionary {
         var _loc17_:* = true;
         var _loc18_:* = false;
         var _loc14_:Vector.<Kebinuhi> = null;
         var _loc15_:BitmapData = null;
         var _loc16_:BitmapData = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Kebinuhi = param4.gisydi[param1+0];
         var _loc7_:Kebinuhi = param4.gisydi[param1+1];
         var _loc8_:Kebinuhi = param4.gisydi[param1+2];
         if(_loc8_.coze()==1)
         {
            _loc8_=null;
         }
         var _loc9_:Kebinuhi = param4.gisydi[param1+4];
         var _loc10_:Kebinuhi = param4.gisydi[param1+5];
         if(_loc9_.coze()==1)
         {
            _loc9_=null;
         }
         if(_loc10_.coze()==1)
         {
            _loc10_=null;
         }
         var _loc11_:Kebinuhi = param4.gisydi[param1+6];
         if(!(_loc10_==null)&&!(_loc11_.coze()==1))
         {
            _loc15_=new BitmapData(this.width_*3,this.height_,true,0);
            _loc15_.copyPixels(_loc10_.image_,new Rectangle(0,0,this.width_,this.height_),new Point(this.width_,0));
            _loc15_.copyPixels(_loc11_.image_,new Rectangle(0,0,this.width_,this.height_),new Point(this.width_*2,0));
            _loc16_=null;
            if(!(_loc10_.mask_==null)||!(_loc11_.mask_==null))
            {
               _loc16_=new BitmapData(this.width_*3,this.height_,true,0);
            }
            if(_loc10_.mask_!=null)
            {
               _loc16_.copyPixels(_loc10_.mask_,new Rectangle(0,0,this.width_,this.height_),new Point(this.width_,0));
            }
            if(_loc11_.mask_!=null)
            {
               _loc16_.copyPixels(_loc11_.mask_,new Rectangle(0,0,this.width_,this.height_),new Point(this.width_*2,0));
            }
            _loc10_=new Kebinuhi(_loc15_,_loc16_);
         }
         var _loc12_:Vector.<Kebinuhi> = new Vector.<Kebinuhi>();
         _loc12_.push(param2?_loc6_.mirror():_loc6_);
         _loc5_[radev]=_loc12_;
         var _loc13_:Vector.<Kebinuhi> = new Vector.<Kebinuhi>();
         _loc13_.push(param2?_loc7_.mirror():_loc7_);
         if(_loc8_!=null)
         {
            _loc13_.push(param2?_loc8_.mirror():_loc8_);
         }
         else
         {
            if(param3)
            {
               _loc13_.push(!param2?_loc7_.mirror(7):_loc7_);
            }
            else
            {
               _loc13_.push(param2?_loc6_.mirror():_loc6_);
            }
         }
         _loc5_[dywala]=_loc13_;
         if(_loc9_==null&&_loc10_==null)
         {
            _loc14_=_loc13_;
         }
         else
         {
            _loc14_=new Vector.<Kebinuhi>();
            if(_loc9_!=null)
            {
               _loc14_.push(param2?_loc9_.mirror():_loc9_);
            }
            if(_loc10_!=null)
            {
               _loc14_.push(param2?_loc10_.mirror():_loc10_);
            }
         }
         _loc5_[fomosypy]=_loc14_;
         return _loc5_;
      }
   }

}