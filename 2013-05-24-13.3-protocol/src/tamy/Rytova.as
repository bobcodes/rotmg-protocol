package tamy
{
   import flash.utils.ByteArray;
   import flash.display.BitmapData;


   public class Rytova extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Rytova() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const tahycukir:int = 1229472850;

      private static const buluwy:int = 1229209940;

      private static const zifug:int = 1950701684;

      private static const mujini:int = 1767135348;

      private static const hodesipy:int = 2052348020;

      private static const devyzyv:int = 1229278788;

      private static var vyqo:uint;

      private static var wily:uint;

      private static var cyrek:int;

      private static var bege:int;

      private static var wez:int;

      private static var tiqivoky:int;

      private static var bufefak:int;

      private static var hesi:ByteArray;

      private static var buffer:ByteArray;

      private static var fytypo:int;

      private static var mygarewe:int;

      public static function fav(param1:ByteArray) : BitmapData {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:* = false;
         var _loc5_:* = 0;
         if(param1==null)
         {
            return null;
         }
         hesi=param1;
         buffer=new ByteArray();
         mygarewe=4;
         hesi.position=0;
         if(hesi.readUnsignedInt()!=2.303741511E9)
         {
            return necebony();
         }
         if(hesi.readUnsignedInt()!=218765834)
         {
            return necebony();
         }
         var _loc2_:Array = wefubob();
         var _loc3_:* = 0;
         _loc5_=0;
         while(_loc5_<_loc2_.length)
         {
            hesi.position=_loc2_[_loc5_].position;
            _loc4_=true;
            if(_loc2_[_loc5_].type==tahycukir)
            {
               _loc3_++;
               if(_loc5_==0)
               {
                  _loc4_=sanyzofeb(_loc2_[_loc5_].length);
               }
               else
               {
                  _loc4_=false;
               }
            }
            if(_loc2_[_loc5_].type==buluwy)
            {
               buffer.writeBytes(hesi,hesi.position,_loc2_[_loc5_].length);
            }
            if(!_loc4_||_loc3_>1)
            {
               return necebony();
            }
            _loc5_++;
         }
         var _loc6_:BitmapData = mimi();
         hesi=null;
         buffer=null;
         return _loc6_;
      }

      public static function keqatoq(param1:ByteArray) : XML {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:* = 0;
         if(param1==null)
         {
            return null;
         }
         hesi=param1;
         hesi.position=0;
         if(hesi.readUnsignedInt()!=2.303741511E9)
         {
            hesi=null;
            return null;
         }
         if(hesi.readUnsignedInt()!=218765834)
         {
            hesi=null;
            return null;
         }
         var _loc2_:Array = wefubob();
         var _loc3_:XML = <information/>;
         _loc4_=0;
         while(_loc4_<_loc2_.length)
         {
            if(_loc2_[_loc4_].type==zifug)
            {
               _loc3_.appendChild(dugah(_loc2_[_loc4_].position,_loc2_[_loc4_].length));
            }
            if(_loc2_[_loc4_].type==mujini)
            {
               _loc3_.appendChild(qiqytujok(_loc2_[_loc4_].position,_loc2_[_loc4_].length));
            }
            if(_loc2_[_loc4_].type==hodesipy)
            {
               _loc3_.appendChild(bosa(_loc2_[_loc4_].position,_loc2_[_loc4_].length));
            }
            _loc4_++;
         }
         hesi=null;
         return _loc3_;
      }

      private static function dugah(param1:int, param2:int) : XML {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:XML = <tEXt/>;
         var _loc4_:* = "";
         var _loc5_:* = "";
         var _loc6_:* = -1;
         hesi.position=param1;
         while(hesi.position<param1+param2)
         {
            _loc6_=hesi.readUnsignedByte();
            if(_loc6_>0)
            {
               _loc4_=_loc4_+String.fromCharCode(_loc6_);
               continue;
            }
            break;
         }
         _loc5_=hesi.readUTFBytes(param1+param2-hesi.position);
         _loc3_.appendChild(<keyword>{_loc4_}</keyword>);
         _loc3_.appendChild(<text>{_loc5_}</text>);
         return _loc3_;
      }

      private static function bosa(param1:int, param2:int) : XML {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc8_:ByteArray = null;
         var _loc3_:XML = <zTXt/>;
         var _loc4_:* = "";
         var _loc5_:* = "";
         var _loc6_:* = -1;
         hesi.position=param1;
         while(hesi.position<param1+param2)
         {
            _loc6_=hesi.readUnsignedByte();
            if(_loc6_>0)
            {
               _loc4_=_loc4_+String.fromCharCode(_loc6_);
               continue;
            }
            break;
         }
         var _loc7_:int = hesi.readUnsignedByte();
         if(_loc7_==0)
         {
            _loc8_=new ByteArray();
            _loc8_.writeBytes(hesi,hesi.position,param1+param2-hesi.position);
            _loc8_.uncompress();
            _loc5_=_loc8_.readUTFBytes(_loc8_.length);
         }
         _loc3_.appendChild(<keyword>{_loc4_}</keyword>);
         _loc3_.appendChild(<text>{_loc5_}</text>);
         return _loc3_;
      }

      private static function qiqytujok(param1:int, param2:int) : XML {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc11_:ByteArray = null;
         var _loc3_:XML = <iTXt/>;
         var _loc4_:* = "";
         var _loc5_:* = "";
         var _loc6_:* = "";
         var _loc7_:* = "";
         var _loc8_:* = -1;
         hesi.position=param1;
         while(hesi.position<param1+param2)
         {
            _loc8_=hesi.readUnsignedByte();
            if(_loc8_>0)
            {
               _loc4_=_loc4_+String.fromCharCode(_loc8_);
               continue;
            }
            break;
         }
         var _loc9_:* = hesi.readUnsignedByte()==1;
         var _loc10_:int = hesi.readUnsignedByte();
         while(hesi.position<param1+param2)
         {
            _loc8_=hesi.readUnsignedByte();
            if(_loc8_>0)
            {
               _loc5_=_loc5_+String.fromCharCode(_loc8_);
               continue;
            }
            break;
         }
         while(hesi.position<param1+param2)
         {
            _loc8_=hesi.readUnsignedByte();
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
               _loc11_.writeBytes(hesi,hesi.position,param1+param2-hesi.position);
               _loc11_.uncompress();
               _loc7_=_loc11_.readUTFBytes(_loc11_.length);
            }
         }
         else
         {
            _loc7_=hesi.readUTFBytes(param1+param2-hesi.position);
         }
         _loc3_.appendChild(<keyword>{_loc4_}</keyword>);
         _loc3_.appendChild(<text>{_loc7_}</text>);
         _loc3_.appendChild(<languageTag>{_loc5_}</languageTag>);
         _loc3_.appendChild(<translatedKeyword>{_loc6_}</translatedKeyword>);
         return _loc3_;
      }

      private static function necebony() : BitmapData {
         var _loc1_:* = true;
         var _loc2_:* = false;
         hesi=null;
         buffer=null;
         return null;
      }

      private static function wefubob() : Array {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:uint = 0;
         var _loc3_:* = 0;
         var _loc1_:Array = [];
         _loc2_=hesi.readUnsignedInt();
         _loc3_=hesi.readInt();
         _loc1_.push(
            {
               type:_loc3_,
               position:hesi.position,
               length:_loc2_
            }
         );
         hesi.position=hesi.position+(_loc2_+4);
         while(!(_loc3_==devyzyv)&&hesi.bytesAvailable>0)
         {
         }
         return _loc1_;
      }

      private static function sanyzofeb(param1:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1!=13)
         {
            return false;
         }
         vyqo=hesi.readUnsignedInt();
         wily=hesi.readUnsignedInt();
         cyrek=hesi.readUnsignedByte();
         bege=hesi.readUnsignedByte();
         wez=hesi.readUnsignedByte();
         tiqivoky=hesi.readUnsignedByte();
         bufefak=hesi.readUnsignedByte();
         if(vyqo<=0||wily<=0)
         {
            return false;
         }
         switch(cyrek)
         {
            case 1:
            case 2:
            case 4:
            case 8:
            case 16:
               switch(bege)
               {
                  case 0:
                     if(!(cyrek==1)&&!(cyrek==2)&&!(cyrek==4)&&!(cyrek==8)&&!(cyrek==16))
                     {
                        return false;
                     }
                     break;
                  case 2:
                  case 4:
                  case 6:
                     if(!(cyrek==8)&&!(cyrek==16))
                     {
                        return false;
                     }
                     break;
                  case 3:
                     if(!(cyrek==1)&&!(cyrek==2)&&!(cyrek==4)&&!(cyrek==8))
                     {
                        return false;
                     }
                     break;
                  default:
                     return false;
               }
               if(!(wez==0)||!(tiqivoky==0))
               {
                  return false;
               }
               if(!(bufefak==0)&&!(bufefak==1))
               {
                  return false;
               }
               return true;
            default:
               return false;
         }
      }

      private static function mimi() : BitmapData {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var bufferLen:uint = 0;
         var filter:int = 0;
         var i:int = 0;
         var r:uint = 0;
         var g:uint = 0;
         var b:uint = 0;
         var a:uint = 0;
         var bd:BitmapData = new BitmapData(vyqo,wily);
         try
         {
            buffer.uncompress();
         }
         catch(err:*)
         {
            return null;
         }
         fytypo=0;
         bufferLen=buffer.length;
         while(buffer.position<bufferLen)
         {
            filter=buffer.readUnsignedByte();
            if(filter==0)
            {
               i=0;
               while(i<vyqo)
               {
                  r=gupavos()<<16;
                  g=gupavos()<<8;
                  b=gupavos();
                  a=gupavos()<<24;
                  bd.setPixel32(i,fytypo,a+r+g+b);
                  i++;
               }
            }
            else
            {
               if(filter==1)
               {
                  i=0;
                  while(i<vyqo)
                  {
                     r=gymyzi()<<16;
                     g=gymyzi()<<8;
                     b=gymyzi();
                     a=gymyzi()<<24;
                     bd.setPixel32(i,fytypo,a+r+g+b);
                     i++;
                  }
               }
               else
               {
                  if(filter==2)
                  {
                     i=0;
                     while(i<vyqo)
                     {
                        r=dilewap()<<16;
                        g=dilewap()<<8;
                        b=dilewap();
                        a=dilewap()<<24;
                        bd.setPixel32(i,fytypo,a+r+g+b);
                        i++;
                     }
                  }
                  else
                  {
                     if(filter==3)
                     {
                        i=0;
                        while(i<vyqo)
                        {
                           r=vewiwefy()<<16;
                           g=vewiwefy()<<8;
                           b=vewiwefy();
                           a=vewiwefy()<<24;
                           bd.setPixel32(i,fytypo,a+r+g+b);
                           i++;
                        }
                     }
                     else
                     {
                        if(filter==4)
                        {
                           i=0;
                           while(i<vyqo)
                           {
                              r=cuwop()<<16;
                              g=cuwop()<<8;
                              b=cuwop();
                              a=cuwop()<<24;
                              bd.setPixel32(i,fytypo,a+r+g+b);
                              i++;
                           }
                        }
                        else
                        {
                           buffer.position=buffer.position+mygarewe*vyqo;
                        }
                     }
                  }
               }
            }
            fytypo++;
         }
         return bd;
      }

      private static function gupavos() : uint {
         return buffer[buffer.position++];
      }

      private static function gymyzi() : uint {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:uint = buffer[buffer.position]+vywahotak();
         _loc1_=_loc1_&255;
         var _loc2_:* = buffer.position++;
         buffer[_loc2_]=_loc1_;
         return _loc1_;
      }

      private static function dilewap() : uint {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:uint = buffer[buffer.position]+pozej();
         _loc1_=_loc1_&255;
         var _loc2_:* = buffer.position++;
         buffer[_loc2_]=_loc1_;
         return _loc1_;
      }

      private static function vewiwefy() : uint {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:uint = buffer[buffer.position]+Math.floor((vywahotak()+pozej())/2);
         _loc1_=_loc1_&255;
         var _loc2_:* = buffer.position++;
         buffer[_loc2_]=_loc1_;
         return _loc1_;
      }

      private static function cuwop() : uint {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:uint = buffer[buffer.position]+hurajiv();
         _loc1_=_loc1_&255;
         var _loc2_:* = buffer.position++;
         buffer[_loc2_]=_loc1_;
         return _loc1_;
      }

      private static function hurajiv() : uint {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc1_:uint = vywahotak();
         var _loc2_:uint = pozej();
         var _loc3_:uint = satam();
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

      private static function vywahotak() : uint {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:int = fytypo*(vyqo*mygarewe+1);
         var _loc2_:int = buffer.position-mygarewe;
         if(_loc2_<=_loc1_)
         {
            return 0;
         }
         return buffer[_loc2_];
      }

      private static function pozej() : uint {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = buffer.position-vyqo*mygarewe+1;
         if(_loc1_<0)
         {
            return 0;
         }
         return buffer[_loc1_];
      }

      private static function satam() : uint {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:int = buffer.position-vyqo*mygarewe+1;
         if(_loc1_<0)
         {
            return 0;
         }
         var _loc2_:int = (fytypo-1)*(vyqo*mygarewe+1);
         _loc1_=_loc1_-mygarewe;
         if(_loc1_<=_loc2_)
         {
            return 0;
         }
         return buffer[_loc1_];
      }
   }

}