package waquzav
{
   import flash.utils.ByteArray;
   import flash.display.BitmapData;


   public class Monuhyl extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Monuhyl() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const zah:int = 1229472850;

      private static const tabozut:int = 1229209940;

      private static const lehylof:int = 1950701684;

      private static const halyfora:int = 1767135348;

      private static const bupohob:int = 2052348020;

      private static const gitoqub:int = 1229278788;

      private static var bif:uint;

      private static var jirocary:uint;

      private static var zocydepub:int;

      private static var dypy:int;

      private static var dapy:int;

      private static var fiwoqad:int;

      private static var gafedaje:int;

      private static var jit:ByteArray;

      private static var buffer:ByteArray;

      private static var qomaty:int;

      private static var gefitu:int;

      public static function diwig(param1:ByteArray) : BitmapData {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:* = false;
         var _loc5_:* = 0;
         if(param1==null)
         {
            return null;
         }
         jit=param1;
         buffer=new ByteArray();
         gefitu=4;
         jit.position=0;
         if(jit.readUnsignedInt()!=2.303741511E9)
         {
            return wyfef();
         }
         if(jit.readUnsignedInt()!=218765834)
         {
            return wyfef();
         }
         var _loc2_:Array = tulefu();
         var _loc3_:* = 0;
         _loc5_=0;
         while(_loc5_<_loc2_.length)
         {
            jit.position=_loc2_[_loc5_].position;
            _loc4_=true;
            if(_loc2_[_loc5_].type==zah)
            {
               _loc3_++;
               if(_loc5_==0)
               {
                  _loc4_=tetorykol(_loc2_[_loc5_].length);
               }
               else
               {
                  _loc4_=false;
               }
            }
            if(_loc2_[_loc5_].type==tabozut)
            {
               buffer.writeBytes(jit,jit.position,_loc2_[_loc5_].length);
            }
            if(!_loc4_||_loc3_>1)
            {
               return wyfef();
            }
            _loc5_++;
         }
         var _loc6_:BitmapData = danydem();
         jit=null;
         buffer=null;
         return _loc6_;
      }

      public static function lyqo(param1:ByteArray) : XML {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:* = 0;
         if(param1==null)
         {
            return null;
         }
         jit=param1;
         jit.position=0;
         if(jit.readUnsignedInt()!=2.303741511E9)
         {
            jit=null;
            return null;
         }
         if(jit.readUnsignedInt()!=218765834)
         {
            jit=null;
            return null;
         }
         var _loc2_:Array = tulefu();
         var _loc3_:XML = <information/>;
         _loc4_=0;
         while(_loc4_<_loc2_.length)
         {
            if(_loc2_[_loc4_].type==lehylof)
            {
               _loc3_.appendChild(ratiradel(_loc2_[_loc4_].position,_loc2_[_loc4_].length));
            }
            if(_loc2_[_loc4_].type==halyfora)
            {
               _loc3_.appendChild(bihif(_loc2_[_loc4_].position,_loc2_[_loc4_].length));
            }
            if(_loc2_[_loc4_].type==bupohob)
            {
               _loc3_.appendChild(hava(_loc2_[_loc4_].position,_loc2_[_loc4_].length));
            }
            _loc4_++;
         }
         jit=null;
         return _loc3_;
      }

      private static function ratiradel(param1:int, param2:int) : XML {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:XML = <tEXt/>;
         var _loc4_:* = "";
         var _loc5_:* = "";
         var _loc6_:* = -1;
         jit.position=param1;
         while(jit.position<param1+param2)
         {
            _loc6_=jit.readUnsignedByte();
            if(_loc6_>0)
            {
               _loc4_=_loc4_+String.fromCharCode(_loc6_);
               continue;
            }
            break;
         }
         _loc5_=jit.readUTFBytes(param1+param2-jit.position);
         _loc3_.appendChild(<keyword>{_loc4_}</keyword>);
         _loc3_.appendChild(<text>{_loc5_}</text>);
         return _loc3_;
      }

      private static function hava(param1:int, param2:int) : XML {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc8_:ByteArray = null;
         var _loc3_:XML = <zTXt/>;
         var _loc4_:* = "";
         var _loc5_:* = "";
         var _loc6_:* = -1;
         jit.position=param1;
         while(jit.position<param1+param2)
         {
            _loc6_=jit.readUnsignedByte();
            if(_loc6_>0)
            {
               _loc4_=_loc4_+String.fromCharCode(_loc6_);
               continue;
            }
            break;
         }
         var _loc7_:int = jit.readUnsignedByte();
         if(_loc7_==0)
         {
            _loc8_=new ByteArray();
            _loc8_.writeBytes(jit,jit.position,param1+param2-jit.position);
            _loc8_.uncompress();
            _loc5_=_loc8_.readUTFBytes(_loc8_.length);
         }
         _loc3_.appendChild(<keyword>{_loc4_}</keyword>);
         _loc3_.appendChild(<text>{_loc5_}</text>);
         return _loc3_;
      }

      private static function bihif(param1:int, param2:int) : XML {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc11_:ByteArray = null;
         var _loc3_:XML = <iTXt/>;
         var _loc4_:* = "";
         var _loc5_:* = "";
         var _loc6_:* = "";
         var _loc7_:* = "";
         var _loc8_:* = -1;
         jit.position=param1;
         while(jit.position<param1+param2)
         {
            _loc8_=jit.readUnsignedByte();
            if(_loc8_>0)
            {
               _loc4_=_loc4_+String.fromCharCode(_loc8_);
               continue;
            }
            break;
         }
         var _loc9_:* = jit.readUnsignedByte()==1;
         var _loc10_:int = jit.readUnsignedByte();
         while(jit.position<param1+param2)
         {
            _loc8_=jit.readUnsignedByte();
            if(_loc8_>0)
            {
               _loc5_=_loc5_+String.fromCharCode(_loc8_);
               continue;
            }
            break;
         }
         while(jit.position<param1+param2)
         {
            _loc8_=jit.readUnsignedByte();
            if(_loc8_>0)
            {
               _loc6_=_loc6_+String.fromCharCode(_loc8_);
               continue;
            }
            break;
         }
         if(_loc9_)
         {
            if(_loc10_==0)
            {
               _loc11_=new ByteArray();
               _loc11_.writeBytes(jit,jit.position,param1+param2-jit.position);
               _loc11_.uncompress();
               _loc7_=_loc11_.readUTFBytes(_loc11_.length);
            }
         }
         else
         {
            _loc7_=jit.readUTFBytes(param1+param2-jit.position);
         }
         _loc3_.appendChild(<keyword>{_loc4_}</keyword>);
         _loc3_.appendChild(<text>{_loc7_}</text>);
         _loc3_.appendChild(<languageTag>{_loc5_}</languageTag>);
         _loc3_.appendChild(<translatedKeyword>{_loc6_}</translatedKeyword>);
         return _loc3_;
      }

      private static function wyfef() : BitmapData {
         var _loc1_:* = false;
         var _loc2_:* = true;
         jit=null;
         buffer=null;
         return null;
      }

      private static function tulefu() : Array {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:uint = 0;
         var _loc3_:* = 0;
         var _loc1_:Array = [];
         do
         {
            _loc2_=jit.readUnsignedInt();
            _loc3_=jit.readInt();
            _loc1_.push(
               {
                  type:_loc3_,
                  position:jit.position,
                  length:_loc2_
               }
            );
            jit.position=jit.position+(_loc2_+4);
         }
         while(!(_loc3_==gitoqub)&&jit.bytesAvailable>0);
         return _loc1_;
      }

      private static function tetorykol(param1:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1!=13)
         {
            return false;
         }
         bif=jit.readUnsignedInt();
         jirocary=jit.readUnsignedInt();
         zocydepub=jit.readUnsignedByte();
         dypy=jit.readUnsignedByte();
         dapy=jit.readUnsignedByte();
         fiwoqad=jit.readUnsignedByte();
         gafedaje=jit.readUnsignedByte();
         if(bif<=0||jirocary<=0)
         {
            return false;
         }
         switch(zocydepub)
         {
            case 1:
            case 2:
            case 4:
            case 8:
            case 16:
               switch(dypy)
               {
                  case 0:
                     if(!(zocydepub==1)&&!(zocydepub==2)&&!(zocydepub==4)&&!(zocydepub==8)&&!(zocydepub==16))
                     {
                        return false;
                     }
                     break;
                  case 2:
                  case 4:
                  case 6:
                     if(!(zocydepub==8)&&!(zocydepub==16))
                     {
                        return false;
                     }
                     break;
                  case 3:
                     if(!(zocydepub==1)&&!(zocydepub==2)&&!(zocydepub==4)&&!(zocydepub==8))
                     {
                        return false;
                     }
                     break;
                  default:
                     return false;
               }
               if(!(dapy==0)||!(fiwoqad==0))
               {
                  return false;
               }
               if(!(gafedaje==0)&&!(gafedaje==1))
               {
                  return false;
               }
               return true;
            default:
               return false;
         }
      }

      private static function danydem() : BitmapData {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var bufferLen:uint = 0;
         var filter:int = 0;
         var i:int = 0;
         var r:uint = 0;
         var g:uint = 0;
         var b:uint = 0;
         var a:uint = 0;
         var bd:BitmapData = new BitmapData(bif,jirocary);
         buffer.uncompress();
         qomaty=0;
         bufferLen=buffer.length;
         while(buffer.position<bufferLen)
         {
            filter=buffer.readUnsignedByte();
            if(filter==0)
            {
               i=0;
               while(i<bif)
               {
                  r=nimeta()<<16;
                  g=nimeta()<<8;
                  b=nimeta();
                  a=nimeta()<<24;
                  bd.setPixel32(i,qomaty,a+r+g+b);
                  i++;
               }
            }
            else
            {
               if(filter==1)
               {
                  i=0;
                  while(i<bif)
                  {
                     r=qapasub()<<16;
                     g=qapasub()<<8;
                     b=qapasub();
                     a=qapasub()<<24;
                     bd.setPixel32(i,qomaty,a+r+g+b);
                     i++;
                  }
               }
               else
               {
                  if(filter==2)
                  {
                     i=0;
                     while(i<bif)
                     {
                        r=zylytaqi()<<16;
                        g=zylytaqi()<<8;
                        b=zylytaqi();
                        a=zylytaqi()<<24;
                        bd.setPixel32(i,qomaty,a+r+g+b);
                        i++;
                     }
                  }
                  else
                  {
                     if(filter==3)
                     {
                        i=0;
                        while(i<bif)
                        {
                           r=zesymem()<<16;
                           g=zesymem()<<8;
                           b=zesymem();
                           a=zesymem()<<24;
                           bd.setPixel32(i,qomaty,a+r+g+b);
                           i++;
                        }
                     }
                     else
                     {
                        if(filter==4)
                        {
                           i=0;
                           while(i<bif)
                           {
                              r=tehidi()<<16;
                              g=tehidi()<<8;
                              b=tehidi();
                              a=tehidi()<<24;
                              bd.setPixel32(i,qomaty,a+r+g+b);
                              i++;
                           }
                        }
                        else
                        {
                           buffer.position=buffer.position+gefitu*bif;
                        }
                     }
                  }
               }
            }
            qomaty++;
         }
         return bd;
      }

      private static function nimeta() : uint {
         return buffer[buffer.position++];
      }

      private static function qapasub() : uint {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:uint = buffer[buffer.position]+lesit();
         _loc1_=_loc1_&255;
         var _loc2_:* = buffer.position++;
         buffer[_loc2_]=_loc1_;
         return _loc1_;
      }

      private static function zylytaqi() : uint {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:uint = buffer[buffer.position]+tequvuwu();
         _loc1_=_loc1_&255;
         var _loc2_:* = buffer.position++;
         buffer[_loc2_]=_loc1_;
         return _loc1_;
      }

      private static function zesymem() : uint {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:uint = buffer[buffer.position]+Math.floor((lesit()+tequvuwu())/2);
         _loc1_=_loc1_&255;
         var _loc2_:* = buffer.position++;
         buffer[_loc2_]=_loc1_;
         return _loc1_;
      }

      private static function tehidi() : uint {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:uint = buffer[buffer.position]+jika();
         _loc1_=_loc1_&255;
         var _loc2_:* = buffer.position++;
         buffer[_loc2_]=_loc1_;
         return _loc1_;
      }

      private static function jika() : uint {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc1_:uint = lesit();
         var _loc2_:uint = tequvuwu();
         var _loc3_:uint = pabyjezu();
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         _loc4_=_loc1_+_loc2_-_loc3_;
         _loc5_=Math.abs(_loc4_-_loc1_);
         _loc6_=Math.abs(_loc4_-_loc2_);
         _loc7_=Math.abs(_loc4_-_loc3_);
         if(_loc5_<=_loc6_&&_loc5_<=_loc7_)
         {
            _loc8_=_loc1_;
         }
         else
         {
            if(_loc6_<=_loc7_)
            {
               _loc8_=_loc2_;
            }
            else
            {
               _loc8_=_loc3_;
            }
         }
         return _loc8_;
      }

      private static function lesit() : uint {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:int = qomaty*(bif*gefitu+1);
         var _loc2_:int = buffer.position-gefitu;
         if(_loc2_<=_loc1_)
         {
            return 0;
         }
         return buffer[_loc2_];
      }

      private static function tequvuwu() : uint {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = buffer.position-bif*gefitu+1;
         if(_loc1_<0)
         {
            return 0;
         }
         return buffer[_loc1_];
      }

      private static function pabyjezu() : uint {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:int = buffer.position-bif*gefitu+1;
         if(_loc1_<0)
         {
            return 0;
         }
         var _loc2_:int = (qomaty-1)*(bif*gefitu+1);
         _loc1_=_loc1_-gefitu;
         if(_loc1_<=_loc2_)
         {
            return 0;
         }
         return buffer[_loc1_];
      }
   }

}