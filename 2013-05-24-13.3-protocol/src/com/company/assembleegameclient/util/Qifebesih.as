package com.company.assembleegameclient.util
{
   import flash.geom.Rectangle;
   import flash.geom.Point;
   import __AS3__.vec.Vector;
   import com.company.util.Cetol;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.map.Square;
   import flash.utils.ByteArray;
   import aaa.rotmg.config.UserConfig;
   import com.company.assembleegameclient.map.Qezab;
   import com.company.assembleegameclient.map.Map;
   import com.company.util.AssetLibrary;
   import com.company.util.BitmapUtil;
   import com.company.assembleegameclient.map.Polipyva;
   import com.company.util.PointUtil;


   public class Qifebesih extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Qifebesih() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const rect0:Rectangle = new Rectangle(0,0,4,4);

      private static const p0:Point = new Point(0,0);

      private static const rect1:Rectangle = new Rectangle(4,0,4,4);

      private static const p1:Point = new Point(4,0);

      private static const rect2:Rectangle = new Rectangle(0,4,4,4);

      private static const p2:Point = new Point(0,4);

      private static const rect3:Rectangle = new Rectangle(4,4,4,4);

      private static const p3:Point = new Point(4,4);

      private static const kecukyq:int = 0;

      private static const SIDE0:int = 1;

      private static const SIDE1:int = 2;

      private static const duc:int = 3;

      private static const INNERP1:int = 4;

      private static const INNERP2:int = 5;

      private static const hyhased:Vector.<Vector.<Cetol>> = zogaciki();

      private static var cache_:Vector.<Object> = new Vector.<Object>(2);

      public static function redraw(param1:Square, param2:Boolean) : BitmapData {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc3_:ByteArray = null;
         var _loc5_:BitmapData = null;
         if(UserConfig.hebirusi==0)
         {
            return null;
         }
         if(param1.tileType_==253)
         {
            _loc3_=jumokec(param1);
         }
         else
         {
            if(param1.props_.tusazoqog)
            {
               _loc3_=wuped(param1);
            }
            else
            {
               _loc3_=kyvofidib(param1);
            }
         }
         if(_loc3_==null)
         {
            return null;
         }
         var _loc4_:Object = cache_[UserConfig.hebirusi];
         if(_loc4_.hasOwnProperty(_loc3_))
         {
            return _loc4_[_loc3_];
         }
         if(param1.tileType_==253)
         {
            _loc5_=jaji(_loc3_);
            _loc4_[_loc3_]=_loc5_;
            return _loc5_;
         }
         if(param1.props_.tusazoqog)
         {
            _loc5_=kezyveku(_loc3_);
            _loc4_[_loc3_]=_loc5_;
            return _loc5_;
         }
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc9_:* = false;
         if(_loc3_[1]!=_loc3_[4])
         {
            _loc6_=true;
            _loc7_=true;
         }
         if(_loc3_[3]!=_loc3_[4])
         {
            _loc6_=true;
            _loc8_=true;
         }
         if(_loc3_[5]!=_loc3_[4])
         {
            _loc7_=true;
            _loc9_=true;
         }
         if(_loc3_[7]!=_loc3_[4])
         {
            _loc8_=true;
            _loc9_=true;
         }
         if(!(_loc3_[0]==_loc3_[4]))
         {
            _loc6_=true;
         }
         if(!(_loc3_[2]==_loc3_[4]))
         {
            _loc7_=true;
         }
         if(!(_loc3_[6]==_loc3_[4]))
         {
            _loc8_=true;
         }
         if(!(_loc3_[8]==_loc3_[4]))
         {
            _loc9_=true;
         }
         _loc4_[_loc3_]=null;
         return null;
      }

      private static function lipucam(param1:BitmapData, param2:Rectangle, param3:Point, param4:Vector.<Cetol>, param5:uint, param6:uint, param7:uint, param8:uint) : void {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc9_:BitmapData = null;
         var _loc10_:BitmapData = null;
         if(param5==param6&&param5==param8)
         {
            _loc10_=param4[duc].random();
            _loc9_=Qezab.getBitmapData(param7);
         }
         else
         {
            if(!(param5==param6)&&!(param5==param8))
            {
               if(param6!=param8)
               {
                  param1.copyPixels(Qezab.getBitmapData(param6),param2,param3,param4[INNERP1].random(),p0,true);
                  param1.copyPixels(Qezab.getBitmapData(param8),param2,param3,param4[INNERP2].random(),p0,true);
                  return;
               }
               _loc10_=param4[kecukyq].random();
               _loc9_=Qezab.getBitmapData(param6);
            }
            else
            {
               if(param5!=param6)
               {
                  _loc10_=param4[SIDE0].random();
                  _loc9_=Qezab.getBitmapData(param6);
               }
               else
               {
                  _loc10_=param4[SIDE1].random();
                  _loc9_=Qezab.getBitmapData(param8);
               }
            }
         }
         param1.copyPixels(_loc9_,param2,param3,_loc10_,p0,true);
         return;
      }

      private static function kyvofidib(param1:Square) : ByteArray {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc6_:* = 0;
         var _loc7_:Square = null;
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:Map = param1.map_;
         var _loc4_:uint = param1.tileType_;
         var _loc5_:int = param1.y_-1;
         while(_loc5_<=param1.y_+1)
         {
            _loc6_=param1.x_-1;
            while(_loc6_<=param1.x_+1)
            {
               if(_loc6_<0||_loc6_>=_loc3_.width_||_loc5_<0||_loc5_>=_loc3_.height_||_loc6_==param1.x_&&_loc5_==param1.y_)
               {
                  _loc2_.writeByte(_loc4_);
               }
               else
               {
                  _loc7_=_loc3_.squares_[_loc6_+_loc5_*_loc3_.width_];
                  if(_loc7_==null||_loc7_.props_.cyp<=param1.props_.cyp)
                  {
                     _loc2_.writeByte(_loc4_);
                  }
                  else
                  {
                     _loc2_.writeByte(_loc7_.tileType_);
                  }
               }
               _loc6_++;
            }
            _loc5_++;
         }
         return _loc2_;
      }

      private static function zogaciki() : Vector.<Vector.<Cetol>> {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Vector.<Vector.<Cetol>> = new Vector.<Vector.<Cetol>>();
         mafarymaj(_loc1_,AssetLibrary.watubaroh("inner_mask"),AssetLibrary.watubaroh("sides_mask"),AssetLibrary.watubaroh("outer_mask"),AssetLibrary.watubaroh("innerP1_mask"),AssetLibrary.watubaroh("innerP2_mask"));
         return _loc1_;
      }

      private static function mafarymaj(param1:Vector.<Vector.<Cetol>>, param2:Cetol, param3:Cetol, param4:Cetol, param5:Cetol, param6:Cetol) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc7_:* = 0;
         for each (_loc7_ in [-1,0,2,1])
         {
            new Vector.<Cetol>(6)[0]=homezubyd(param2,_loc7_);
            new Vector.<Cetol>(6)[1]=homezubyd(param3,_loc7_-1);
            new Vector.<Cetol>(6)[2]=homezubyd(param3,_loc7_);
            new Vector.<Cetol>(6)[3]=homezubyd(param4,_loc7_);
            new Vector.<Cetol>(6)[4]=homezubyd(param5,_loc7_);
            new Vector.<Cetol>(6)[5]=homezubyd(param6,_loc7_);
            param1.push(new Vector.<Cetol>(6));
         }
         return;
      }

      private static function homezubyd(param1:Cetol, param2:int) : Cetol {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:BitmapData = null;
         var _loc3_:Cetol = new Cetol();
         for each (_loc4_ in param1.butymyres)
         {
            _loc3_.add(BitmapUtil.fizyt(_loc4_,param2));
         }
         return _loc3_;
      }

      private static function jumokec(param1:Square) : ByteArray {
         var _loc18_:* = false;
         var _loc19_:* = true;
         var _loc14_:Square = null;
         var _loc15_:Square = null;
         var _loc16_:Square = null;
         var _loc17_:Square = null;
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.length=4;
         var _loc3_:Map = param1.map_;
         var _loc4_:int = param1.x_;
         var _loc5_:int = param1.y_;
         var _loc6_:Square = _loc3_.lookupSquare(_loc4_,_loc5_-1);
         var _loc7_:Square = _loc3_.lookupSquare(_loc4_-1,_loc5_);
         var _loc8_:Square = _loc3_.lookupSquare(_loc4_+1,_loc5_);
         var _loc9_:Square = _loc3_.lookupSquare(_loc4_,_loc5_+1);
         var _loc10_:int = _loc6_!=null?_loc6_.props_.runuhe:-1;
         var _loc11_:int = _loc7_!=null?_loc7_.props_.runuhe:-1;
         var _loc12_:int = _loc8_!=null?_loc8_.props_.runuhe:-1;
         var _loc13_:int = _loc9_!=null?_loc9_.props_.runuhe:-1;
         if(_loc10_<0&&_loc11_<0)
         {
            _loc14_=_loc3_.lookupSquare(_loc4_-1,_loc5_-1);
            _loc2_[0]=_loc14_==null||_loc14_.props_.runuhe<0?255:_loc14_.tileType_;
         }
         else
         {
            if(_loc10_<_loc11_)
            {
               _loc2_[0]=_loc7_.tileType_;
            }
            else
            {
               _loc2_[0]=_loc6_.tileType_;
            }
         }
         if(_loc10_<0&&_loc12_<0)
         {
            _loc15_=_loc3_.lookupSquare(_loc4_+1,_loc5_-1);
            _loc2_[1]=_loc15_==null||_loc15_.props_.runuhe<0?255:_loc15_.tileType_;
         }
         else
         {
            if(_loc10_<_loc12_)
            {
               _loc2_[1]=_loc8_.tileType_;
            }
            else
            {
               _loc2_[1]=_loc6_.tileType_;
            }
         }
         if(_loc11_<0&&_loc13_<0)
         {
            _loc16_=_loc3_.lookupSquare(_loc4_-1,_loc5_+1);
            _loc2_[2]=_loc16_==null||_loc16_.props_.runuhe<0?255:_loc16_.tileType_;
         }
         else
         {
            if(_loc11_<_loc13_)
            {
               _loc2_[2]=_loc9_.tileType_;
            }
            else
            {
               _loc2_[2]=_loc7_.tileType_;
            }
         }
         if(_loc12_<0&&_loc13_<0)
         {
            _loc17_=_loc3_.lookupSquare(_loc4_+1,_loc5_+1);
            _loc2_[3]=_loc17_==null||_loc17_.props_.runuhe<0?255:_loc17_.tileType_;
         }
         else
         {
            if(_loc12_<_loc13_)
            {
               _loc2_[3]=_loc9_.tileType_;
            }
            else
            {
               _loc2_[3]=_loc8_.tileType_;
            }
         }
         return _loc2_;
      }

      private static const RECT01:Rectangle = new Rectangle(0,0,8,4);

      private static const RECT13:Rectangle = new Rectangle(4,0,4,8);

      private static const RECT23:Rectangle = new Rectangle(0,4,8,4);

      private static const RECT02:Rectangle = new Rectangle(0,0,4,8);

      private static const RECT0:Rectangle = new Rectangle(0,0,4,4);

      private static const RECT1:Rectangle = new Rectangle(4,0,4,4);

      private static const RECT2:Rectangle = new Rectangle(0,4,4,4);

      private static const RECT3:Rectangle = new Rectangle(4,4,4,4);

      private static const POINT0:Point = new Point(0,0);

      private static const POINT1:Point = new Point(4,0);

      private static const POINT2:Point = new Point(0,4);

      private static const POINT3:Point = new Point(4,4);

      private static function jaji(param1:ByteArray) : BitmapData {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:BitmapData = null;
         var _loc2_:BitmapData = new BitmapData(8,8,false,0);
         if(param1[0]!=255)
         {
            _loc3_=Qezab.getBitmapData(param1[0]);
            _loc2_.copyPixels(_loc3_,RECT0,POINT0);
         }
         if(param1[1]!=255)
         {
            _loc3_=Qezab.getBitmapData(param1[1]);
            _loc2_.copyPixels(_loc3_,RECT1,POINT1);
         }
         if(param1[2]!=255)
         {
            _loc3_=Qezab.getBitmapData(param1[2]);
            _loc2_.copyPixels(_loc3_,RECT2,POINT2);
         }
         if(param1[3]!=255)
         {
            _loc3_=Qezab.getBitmapData(param1[3]);
            _loc2_.copyPixels(_loc3_,RECT3,POINT3);
         }
         return _loc2_;
      }

      private static function wuped(param1:Square) : ByteArray {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc7_:* = 0;
         var _loc8_:Square = null;
         var _loc9_:* = false;
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:Map = param1.map_;
         var _loc4_:* = false;
         var _loc5_:Boolean = param1.props_.byb;
         var _loc6_:int = param1.y_-1;
         while(_loc6_<=param1.y_+1)
         {
            _loc7_=param1.x_-1;
            while(_loc7_<=param1.x_+1)
            {
               _loc8_=_loc3_.lookupSquare(_loc7_,_loc6_);
               if(_loc7_==param1.x_&&_loc6_==param1.y_)
               {
                  _loc2_.writeByte(_loc8_.tileType_);
               }
               else
               {
                  if(_loc5_)
                  {
                     _loc9_=_loc8_==null||_loc8_.tileType_==param1.tileType_;
                  }
                  else
                  {
                     _loc9_=_loc8_==null||!(_loc8_.tileType_==255);
                  }
                  _loc2_.writeBoolean(_loc9_);
                  _loc4_=(_loc4_)||!_loc9_;
               }
               _loc7_++;
            }
            _loc6_++;
         }
         return _loc4_?_loc2_:null;
      }

      private static function kezyveku(param1:ByteArray) : BitmapData {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc2_:BitmapData = Qezab.getBitmapData(param1[4]);
         var _loc3_:BitmapData = _loc2_.clone();
         var _loc4_:Polipyva = Qezab.lego[param1[4]];
         var _loc5_:Vector.<BitmapData> = _loc4_.likejel();
         var _loc6_:Vector.<BitmapData> = _loc4_.fajohizo();
         var _loc7_:* = 1;
         while(_loc7_<8)
         {
            if(!param1[_loc7_])
            {
               _loc3_.copyPixels(_loc5_[_loc7_],_loc5_[_loc7_].rect,PointUtil.qohusovu,null,null,true);
            }
            _loc7_=_loc7_+2;
         }
         if(_loc5_[0]!=null)
         {
            if((param1[3])&&(param1[1])&&!param1[0])
            {
               _loc3_.copyPixels(_loc5_[0],_loc5_[0].rect,PointUtil.qohusovu,null,null,true);
            }
            if((param1[1])&&(param1[5])&&!param1[2])
            {
               _loc3_.copyPixels(_loc5_[2],_loc5_[2].rect,PointUtil.qohusovu,null,null,true);
            }
            if((param1[5])&&(param1[7])&&!param1[8])
            {
               _loc3_.copyPixels(_loc5_[8],_loc5_[8].rect,PointUtil.qohusovu,null,null,true);
            }
            if((param1[3])&&(param1[7])&&!param1[6])
            {
               _loc3_.copyPixels(_loc5_[6],_loc5_[6].rect,PointUtil.qohusovu,null,null,true);
            }
         }
         if(_loc6_!=null)
         {
            if(!param1[3]&&!param1[1])
            {
               _loc3_.copyPixels(_loc6_[0],_loc6_[0].rect,PointUtil.qohusovu,null,null,true);
            }
            if(!param1[1]&&!param1[5])
            {
               _loc3_.copyPixels(_loc6_[2],_loc6_[2].rect,PointUtil.qohusovu,null,null,true);
            }
            if(!param1[5]&&!param1[7])
            {
               _loc3_.copyPixels(_loc6_[8],_loc6_[8].rect,PointUtil.qohusovu,null,null,true);
            }
            if(!param1[3]&&!param1[7])
            {
               _loc3_.copyPixels(_loc6_[6],_loc6_[6].rect,PointUtil.qohusovu,null,null,true);
            }
         }
         return _loc3_;
      }
   }

}