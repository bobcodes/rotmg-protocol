package vos
{
[CLASS1836]   import flash.utils.ByteArray;
   import flash.display.BitmapData;


   public class Zosevov extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Zosevov() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const ryfec:int = 1229472850;

      private static const tuh:int = 1229209940;

      private static const kov:int = 1950701684;

      private static const hekuzebe:int = 1767135348;

      private static const linepanyv:int = 2052348020;

      private static const tiwejako:int = 1229278788;

      private static var lik:uint;

      private static var qupa:uint;

      private static var desewice:int;

      private static var senaky:int;

      private static var gapyqi:int;

      private static var fisariq:int;

      private static var jiwizez:int;

      private static var kywib:ByteArray;

      private static var buffer:ByteArray;

      private static var gydoluh:int;

      private static var pyjo:int;

      public static function gujocomi(param1:ByteArray) : BitmapData {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:* = false;
         var _loc5_:* = 0;
         if(param1==null)
         {
            return null;
         }
         kywib=param1;
         buffer=new ByteArray();
         pyjo=4;
         kywib.position=0;
         if(kywib.readUnsignedInt()!=2.303741511E9)
         {
            return bokoga();
         }
         if(kywib.readUnsignedInt()!=218765834)
         {
            return bokoga();
         }
         var _loc2_:Array = qoc();
         var _loc3_:* = 0;
         _loc5_=0;
         while(_loc5_<_loc2_.length)
         {
            kywib.position=_loc2_[_loc5_].position;
            _loc4_=true;
            if(_loc2_[_loc5_].type==ryfec)
            {
               _loc3_++;
               if(_loc5_==0)
               {
                  _loc4_=refer(_loc2_[_loc5_].length);
               }
               else
               {
                  _loc4_=false;
               }
            }
            if(_loc2_[_loc5_].type==tuh)
            {
               buffer.writeBytes(kywib,kywib.position,_loc2_[_loc5_].length);
            }
            if(!_loc4_||_loc3_>1)
            {
               return bokoga();
            }
            _loc5_++;
         }
         var _loc6_:BitmapData = jylo();
         kywib=null;
         buffer=null;
         return _loc6_;
      }

      public static function wujifok(param1:ByteArray) : XML {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:* = 0;
         if(param1==null)
         {
            return null;
         }
         kywib=param1;
         kywib.position=0;
         if(kywib.readUnsignedInt()!=2.303741511E9)
         {
            kywib=null;
            return null;
         }
         if(kywib.readUnsignedInt()!=218765834)
         {
            kywib=null;
            return null;
         }
         var _loc2_:Array = qoc();
         var _loc3_:XML = <information/>;
         _loc4_=0;
         while(_loc4_<_loc2_.length)
         {
            if(_loc2_[_loc4_].type==kov)
            {
               _loc3_.appendChild(nofyky(_loc2_[_loc4_].position,_loc2_[_loc4_].length));
            }
            if(_loc2_[_loc4_].type==hekuzebe)
            {
               _loc3_.appendChild(sebyvuvyl(_loc2_[_loc4_].position,_loc2_[_loc4_].length));
            }
            if(_loc2_[_loc4_].type==linepanyv)
            {
               _loc3_.appendChild(pac(_loc2_[_loc4_].position,_loc2_[_loc4_].length));
            }
            _loc4_++;
         }
         kywib=null;
         return _loc3_;
      }

      private static function nofyky(param1:int, param2:int) : XML {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:XML = <tEXt/>;
         var _loc4_:* = "";
         var _loc5_:* = "";
         var _loc6_:* = -1;
         kywib.position=param1;
         while(kywib.position<param1+param2)
         {
            _loc6_=kywib.readUnsignedByte();
            if(_loc6_>0)
            {
               _loc4_=_loc4_+String.fromCharCode(_loc6_);
               continue;
            }
            break;
         }
         _loc5_=kywib.readUTFBytes(param1+param2-kywib.position);
         _loc3_.appendChild(<keyword>{_loc4_}</keyword>);
         _loc3_.appendChild(<text>{_loc5_}</text>);
         return _loc3_;
      }

      private static function pac(param1:int, param2:int) : XML {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc8_:ByteArray = null;
         var _loc3_:XML = <zTXt/>;
         var _loc4_:* = "";
         var _loc5_:* = "";
         var _loc6_:* = -1;
         kywib.position=param1;
         while(kywib.position<param1+param2)
         {
            _loc6_=kywib.readUnsignedByte();
            if(_loc6_>0)
            {
               _loc4_=_loc4_+String.fromCharCode(_loc6_);
               continue;
            }
            break;
         }
         var _loc7_:int = kywib.readUnsignedByte();
         if(_loc7_==0)
         {
            _loc8_=new ByteArray();
            _loc8_.writeBytes(kywib,kywib.position,param1+param2-kywib.position);
            _loc8_.uncompress();
            _loc5_=_loc8_.readUTFBytes(_loc8_.length);
         }
         _loc3_.appendChild(<keyword>{_loc4_}</keyword>);
         _loc3_.appendChild(<text>{_loc5_}</text>);
         return _loc3_;
      }

      private static function sebyvuvyl(param1:int, param2:int) : XML {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc11_:ByteArray = null;
         var _loc3_:XML = <iTXt/>;
         var _loc4_:* = "";
         var _loc5_:* = "";
         var _loc6_:* = "";
         var _loc7_:* = "";
         var _loc8_:* = -1;
         kywib.position=param1;
         while(kywib.position<param1+param2)
         {
            _loc8_=kywib.readUnsignedByte();
            if(_loc8_>0)
            {
               _loc4_=_loc4_+String.fromCharCode(_loc8_);
               continue;
            }
            break;
         }
         var _loc9_:* = kywib.readUnsignedByte()==1;
         var _loc10_:int = kywib.readUnsignedByte();
         while(kywib.position<param1+param2)
         {
            _loc8_=kywib.readUnsignedByte();
            if(_loc8_>0)
            {
               _loc5_=_loc5_+String.fromCharCode(_loc8_);
               continue;
            }
            break;
         }
         while(kywib.position<param1+param2)
         {
            _loc8_=kywib.readUnsignedByte();
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
               _loc11_.writeBytes(kywib,kywib.position,param1+param2-kywib.position);
               _loc11_.uncompress();
               _loc7_=_loc11_.readUTFBytes(_loc11_.length);
            }
         }
         else
         {
            _loc7_=kywib.readUTFBytes(param1+param2-kywib.position);
         }
         _loc3_.appendChild(<keyword>{_loc4_}</keyword>);
         _loc3_.appendChild(<text>{_loc7_}</text>);
         _loc3_.appendChild(<languageTag>{_loc5_}</languageTag>);
         _loc3_.appendChild(<translatedKeyword>{_loc6_}</translatedKeyword>);
         return _loc3_;
      }

      private static function bokoga() : BitmapData {
         var _loc1_:* = true;
         var _loc2_:* = false;
         kywib=null;
         buffer=null;
         return null;
      }

      private static function qoc() : Array {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:uint = 0;
         var _loc3_:* = 0;
         var _loc1_:Array = [];
         _loc2_=kywib.readUnsignedInt();
         _loc3_=kywib.readInt();
         _loc1_.push(
            {
               type:_loc3_,
               position:kywib.position,
               length:_loc2_
            }
         );
         kywib.position=kywib.position+(_loc2_+4);
         while(!(_loc3_==tiwejako)&&kywib.bytesAvailable>0)
         {
         }
         return _loc1_;
      }

      private static function refer(param1:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1!=13)
         {
            return false;
         }
         lik=kywib.readUnsignedInt();
         qupa=kywib.readUnsignedInt();
         desewice=kywib.readUnsignedByte();
         senaky=kywib.readUnsignedByte();
         gapyqi=kywib.readUnsignedByte();
         fisariq=kywib.readUnsignedByte();
         jiwizez=kywib.readUnsignedByte();
         if(lik<=0||qupa<=0)
         {
            return false;
         }
         switch(desewice)
         {
            case 1:
            case 2:
            case 4:
            case 8:
            case 16:
               switch(senaky)
               {
                  case 0:
                     if(!(desewice==1)&&!(desewice==2)&&!(desewice==4)&&!(desewice==8)&&!(desewice==16))
                     {
                        return false;
                     }
                     break;
                  case 2:
                  case 4:
                  case 6:
                     if(!(desewice==8)&&!(desewice==16))
                     {
                        return false;
                     }
                     break;
                  case 3:
                     if(!(desewice==1)&&!(desewice==2)&&!(desewice==4)&&!(desewice==8))
                     {
                        return false;
                     }
                     break;
                  default:
                     return false;
               }
               if(!(gapyqi==0)||!(fisariq==0))
               {
                  return false;
               }
               if(!(jiwizez==0)&&!(jiwizez==1))
               {
                  return false;
               }
               return true;
            default:
               return false;
         }
      }

      private static function jylo() : BitmapData {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var bufferLen:uint = 0;
         var filter:int = 0;
         var i:int = 0;
         var r:uint = 0;
         var g:uint = 0;
         var b:uint = 0;
         var a:uint = 0;
         var bd:BitmapData = new BitmapData(lik,qupa);
         buffer.uncompress();
         gydoluh=0;
         bufferLen=buffer.length;
         while(buffer.position<bufferLen)
         {
            filter=buffer.readUnsignedByte();
            if(filter==0)
            {
               i=0;
               while(i<lik)
               {
                  r=sehocyf()<<16;
                  g=sehocyf()<<8;
                  b=sehocyf();
                  a=sehocyf()<<24;
                  bd.setPixel32(i,gydoluh,a+r+g+b);
                  i++;
               }
            }
            else
            {
               if(filter==1)
               {
                  i=0;
                  while(i<lik)
                  {
                     r=cafonupup()<<16;
                     g=cafonupup()<<8;
                     b=cafonupup();
                     a=cafonupup()<<24;
                     bd.setPixel32(i,gydoluh,a+r+g+b);
                     i++;
                  }
               }
               else
               {
                  if(filter==2)
                  {
                     i=0;
                     while(i<lik)
                     {
                        r=redanu()<<16;
                        g=redanu()<<8;
                        b=redanu();
                        a=redanu()<<24;
                        bd.setPixel32(i,gydoluh,a+r+g+b);
                        i++;
                     }
                  }
                  else
                  {
                     if(filter==3)
                     {
                        i=0;
                        while(i<lik)
                        {
                           r=wigep()<<16;
                           g=wigep()<<8;
                           b=wigep();
                           a=wigep()<<24;
                           bd.setPixel32(i,gydoluh,a+r+g+b);
                           i++;
                        }
                     }
                     else
                     {
                        if(filter==4)
                        {
                           i=0;
                           while(i<lik)
                           {
                              r=lodof()<<16;
                              g=lodof()<<8;
                              b=lodof();
                              a=lodof()<<24;
                              bd.setPixel32(i,gydoluh,a+r+g+b);
                              i++;
                           }
                        }
                        else
                        {
                           buffer.position=buffer.position+pyjo*lik;
                        }
                     }
                  }
               }
            }
            gydoluh++;
         }
         return bd;
      }

      private static function sehocyf() : uint {
         return buffer[buffer.position++];
      }

      private static function cafonupup() : uint {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:uint = buffer[buffer.position]+lenepy();
         _loc1_=_loc1_&255;
         var _loc2_:* = buffer.position++;
         buffer[_loc2_]=_loc1_;
         return _loc1_;
      }

      private static function redanu() : uint {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:uint = buffer[buffer.position]+tyd();
         _loc1_=_loc1_&255;
         var _loc2_:* = buffer.position++;
         buffer[_loc2_]=_loc1_;
         return _loc1_;
      }

      private static function wigep() : uint {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:uint = buffer[buffer.position]+Math.floor((lenepy()+tyd())/2);
         _loc1_=_loc1_&255;
         var _loc2_:* = buffer.position++;
         buffer[_loc2_]=_loc1_;
         return _loc1_;
      }

      private static function lodof() : uint {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:uint = buffer[buffer.position]+tyvoz();
         _loc1_=_loc1_&255;
         var _loc2_:* = buffer.position++;
         buffer[_loc2_]=_loc1_;
         return _loc1_;
      }

      private static function tyvoz() : uint {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc1_:uint = lenepy();
         var _loc2_:uint = tyd();
         var _loc3_:uint = hos();
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

      private static function lenepy() : uint {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:int = gydoluh*(lik*pyjo+1);
         var _loc2_:int = buffer.position-pyjo;
         if(_loc2_<=_loc1_)
         {
            return 0;
         }
         return buffer[_loc2_];
      }

      private static function tyd() : uint {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = buffer.position-lik*pyjo+1;
         if(_loc1_<0)
         {
            return 0;
         }
         return buffer[_loc1_];
      }

      private static function hos() : uint {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:int = buffer.position-lik*pyjo+1;
         if(_loc1_<0)
         {
            return 0;
         }
         var _loc2_:int = (gydoluh-1)*(lik*pyjo+1);
         _loc1_=_loc1_-pyjo;
         if(_loc1_<=_loc2_)
         {
            return 0;
         }
         return buffer[_loc1_];
      }
   }
[/CLASS]
}