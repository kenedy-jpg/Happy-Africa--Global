
CREATE POLICY "Public video access"
ON storage.objects
FOR SELECT
USING (bucket_id = 'videos');

CREATE POLICY "Authenticated upload"
ON storage.objects
FOR INSERT
WITH CHECK (auth.uid() IS NOT NULL);
