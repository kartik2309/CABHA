clc;
%sha512hasher = System.Security.Cryptography.SHA512Managed;
string1 = 'A String to be Hashed for testing grom sha512 and cabha512';
key1 = 'adcfghjLlzxcvbnmqwertyuiopqaywse';

string2 = 'B String to be hashed for testing from sha512 and cabha512';
key2 = 'bdcfghjLlzxcvbnmqwertyuiopqaywse';

tic 
cabha512A = computerhash(string1,key1);
toc

tic
cabha512B = computerhash(string2, key2);
toc
disp(cabha512B)

% figure(1)
% plotHashValues(string1,cabha512A,'key1 = adcfghjLlzxcvbnmqwertyuiopqaywse');
% figure(2)
% plotHashValues(string2,cabha512B,'key2 = bdcfghjLlzxcvbnmqwertyuiopqaywse');
% display(testCollision(cabha512A,cabha512B));

% collisioncabh = zeros(1,10);
% collisionsha = zeros(1,100);
% 
% tic
% for i=1:100
%     
%     string1 = generaterandomstring('M');
%     string2 = generaterandomstring('M');
%     key1 = generaterandomstring('K');
%     key2 = generaterandomstring('K');
% 
%     sha1=uint8(sha512hasher.ComputeHash(uint8(string1)));
%     sha2=uint8(sha512hasher.ComputeHash(uint8(string2)));
%     collisionsha(i) = testCollision(sha1,sha2);
%     
%     cabh1 = computerhash(string1,key1);
%     cabh2 = computerhash(string2,key2);
%     collisioncabh(i)=testCollision(cabh1,cabh2);
% end
% toc
% 
% 
% figure(1)
% plot(collisionsha),xlabel('String'),ylabel('Byte Collision Occurences'),title('Byte Collision test for SHA512');
% 
% figure(2)
% plot(collisioncabh),xlabel('String'),ylabel('Byte Collision Occurences'),title('Byte Collision test for CABHA512');
% 
% 
% [a,b,c,d,e]=Probability(collisioncabh,100);
% [f,g,h,i,j]=Probability(collisionsha,100);
% 
% arrayCABHA = [a,b,c,d,e];
% arraySHA = [f,g,h,i,j];
% 
% figure(3)
% plot(arraySHA),xlabel('Byte Collision Occurences'),ylabel('Probability'),title('Byte Collision test for SHA512');
% 
% figure(4)
% plot(arrayCABHA),xlabel('Byte Collision Occurences'),ylabel('Probability'),title('Byte Collision test for CABHA512');
% 

